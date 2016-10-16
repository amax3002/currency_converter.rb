require_relative "./currencies"  # => true
require 'set'                    # => true

class Currency_converter
  def initialize(rates)
    @conversion_rates = rates
  end

  def keys
    self.keys
  end

  def currency_object(country_code1, country_code2)
    @conversion_rates[country_code1] *  @conversion_rates[country_code2]
  end

  def currency_object_check(country_code1, country_code2)
    rates = 0.0
    if country_code1 != "USD" && country_code2 != "USD"
      rates = @conversion_rates[country_code1] /  @conversion_rates[country_code2]
      "#{rates} #{country_code1} to #{country_code2}"
    else
      rates = @conversion_rates[country_code1] *  @conversion_rates[country_code2]

      "#{rates} #{country_code1} to #{country_code2}"
    end
  end

  # def looping(country code1)
  #   self.each {|@conversion_rates|}
  #   puts amount
  # end
end
