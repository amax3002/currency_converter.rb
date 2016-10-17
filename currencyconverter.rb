require_relative "./currency"
require 'set'
require_relative "./error"

class CurrencyConverter
attr_accessor :conversion_rates

  def initialize(rates)
    @conversion_rates = rates
  end



  def converter(object, code)
    raise UnknownCurrencyCodeError unless conversion_rates.include?(object.code) && conversion_rates.include?(code)
    Currency.new(conversion_rates[code] / conversion_rates[object.code] * object.amount, code)
  end

end
