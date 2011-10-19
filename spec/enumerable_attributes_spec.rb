require 'rubygems'
require 'minitest/spec'
require 'minitest/pride'
require 'minitest/autorun'
require 'lib/enumerable_attributes'


describe EnumerableAttributes do
  describe "including it as a module" do
    it "defines attr_enumerator class method" do
      class SomeClass
        include EnumerableAttributes
      end

      SomeClass.must_respond_to :attr_enumerator
    end
  end
end
