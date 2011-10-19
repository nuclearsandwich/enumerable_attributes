require 'minitest/autorun'

require './lib/enumerable_attributes'


describe EnumerableAttributes do
  before do
    class ContainsManyCollections
      include EnumerableAttributes
    end
  end
  describe "including it as a module" do
    it "defines attr_enumerator class method" do
      ContainsManyCollections.must_respond_to :attr_enumerator
    end
  end
end
