module Currency
  RATES = {
    :SGDMYR => 2.4,
    :SGDUSD => 0.8
  }

  def price_in(currency)
    (price * RATES["SGD#{currency.upcase}".to_sym]).to_i
  end
end