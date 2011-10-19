require './lib/enumerable_attributes/version'

module EnumerableAttributes
  def self.included klass
    def klass.attr_enumerator attr
    end
  end
end
