class Dish
  attr_accessor :name, :price

  RATES = {
    :SGDMYR => 2.4
  }

  def initialize(attrs)
    attrs.each do |key,value|
      self.send("#{key}=", value)
    end
  end

  def price_in_myr
    (price * RATES[:SGDMYR]).to_i
  end

end