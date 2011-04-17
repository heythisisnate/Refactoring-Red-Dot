class Dish
  attr_accessor :name, :price

  RATES = {
    :SGDMYR => 2.4,
    :SGDUSD => 0.8
  }

  def initialize(attrs)
    attrs.each do |key,value|
      self.send("#{key}=", value)
    end
  end

  def price_in(currency)
    (price * RATES["SGD#{currency.upcase}".to_sym]).to_i
  end

end