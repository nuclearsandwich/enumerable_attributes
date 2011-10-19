Enumerable Attributes
=====================

*Enumerable Attributes gives you all the sexiness of the Enumerable module on
arbitrary attribute collections with one extra line compared to Enumerable*

Current Status
--------------
EnumerableAttributes is an idea I had while reading *Smalltalk Best Practice
Patterns* by Kent Beck and felt crazy enough to implement on a Tuesday over
lunch.

By the weekend of October 21 - 22, 2011 I should have this published on
Rubygems.

Installation
------------
Enumerable Attributes will be packaged as a gem. Either
`gem install enumerable_attributes` from the command line or
`gem 'enumerable_attributes'` within your Gemfile`

Example
-------

``` ruby
require 'enumerable_attributes'

class Document
	include EnumerableAttributes
	attr_enumerable :words, :lines, :pages

	def initialize title, authors, text
		@authors = authors
		process_text # defines you @words, @lines, @pages
	end
end

doc = Document.new "Cool Story", ["Bro"], "So some stuff happened
and then I found $20!"

doc.words_size #=> 9
doc.map_words{ |w| w.upcase } #=> "SO SOME STUFF HAPPENED AND THEN I FOUND $20!"
doc.includes_word? "brah" #=> false
```

Justification
-------------

In order to expose these collections currently there are two ways to go:
1. Make each collection accessible through `attr_reader`.
2. Write `#each_word`, `#each_line`, and `#each_page` methods.

In the first case, you're left with the unsatisfying feeling of having exposed
your implementation to the outside when you call `document.words.each {|w| ...}`

In the second, you're stuck with the each method when ruby gives us such
wonderful methods as `#find`, `#collect`, `#select`, and `#reject` and many
others.

Wouldn't it be great if you could create enumerable attributes declaratively
the same way you create regular readers and writers. With Ruby's metaprogramming
and flexibility and my bravado getting there should be a cinch!

