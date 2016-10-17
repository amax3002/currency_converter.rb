require_relative "./currency"
require_relative "./currencyconverter"
require 'set'

money_example_one = Currency.new(10,"USD")
money_example_two = Currency.new(10,"USD")
money_example_three = Currency.new(40,"EUR")
money_example_four = Currency.new(70,"EUR")
money_example_five= Currency.new(3000,"YEN")
money_example_six= Currency.new(150,"INR")

Currency.new(200,"INR").==Currency.new(200,"INR")

money_example_one.*2


money_example_one.+money_example_two
money_example_four.-money_example_three




usd_converter = CurrencyConverter.new({"USD" => 1.00, "EUR" => 0.91, "GBP" => 0.82, "CAD" => 1.31, "YEN" => 104.115})

usd_converter.converter(Currency.new(105.7,"USD"), "EUR")
