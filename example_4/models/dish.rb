require File.expand_path('../lib/currency', File.dirname(__FILE__))

class Dish
  include Currency
  attr_accessor :name, :price

  def initialize(attrs)
    attrs.each do |key,value|
      self.send("#{key}=", value)
    end
  end
end