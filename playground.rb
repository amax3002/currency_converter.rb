require_relative "./currencies"
require_relative "./currencyconverter"
require 'set'

money_example_one = Currencies.new(2,"USD")
money_example_two = Currencies.new(2,"USD")
money_example_three = Currencies.new(4,"EUR")
money_example_four = Currencies.new(7,"EUR")
money_example_five= Currencies.new(3,"INR")

money_example_one.multiply(2)
test = money_example_one.code!


money_example_one.validate_addition(money_example_two)
money_example_four.validate_sub(money_example_three)

money_example_one.amount! + money_example_two.amount!



usd_converter = Currency_converter.new({"USD" => 1.00, "EUR" => 0.91, "GBP" => 0.82, "INR" => 66.71, "CAD" => 1.31})

usd_converter.currency_object_check(money_example_one.code!, money_example_three.code!)

usd_converter.currency_object_check(money_example_five.code!, money_example_three.code!)

usd_converter.keys
