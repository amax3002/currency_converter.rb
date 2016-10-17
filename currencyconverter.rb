require_relative "./currencies"
require 'set'

class Currency_converter
  def initialize(rates)
    @conversion_rates = rates
  end


  def keyss
    @conversion_rates.keys
  end


  def currency_object(country_code1, country_code2)
    @conversion_rates[country_code1] *  @conversion_rates[country_code2]
  end


  def currency_object_check(country_code1, country_code2)
    raise "UnknownCurrencyCodeError" #if !compare_amount_code(other)

    rates = 0.0
    if country_code1 != "USD" && country_code2 != "USD"
      rates = @conversion_rates[country_code1] /  @conversion_rates[country_code2]
      "#{rates} #{country_code1} to #{country_code2}"
    else
      rates = @conversion_rates[country_code1] *  @conversion_rates[country_code2]

      "#{rates} #{country_code1} to #{country_code2}"
    end
  end


  def get_em (country_code1)
    @conversion_rates.each do |key, array|
      if country_code1 != "USD"
        if key !=  country_code1
        puts "1 #{country_code1} is #{array / @conversion_rates[country_code1]} in #{key}"
        end
      else
        if key !=  country_code1
        puts key
        puts "1 #{country_code1} is #{array * @conversion_rates[country_code1]} in #{key}"
        end
      end
    end


  end

end
