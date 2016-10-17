require_relative "./currencies"         # => true
require_relative "./currencyconverter"  # ~> LoadError: cannot load such file -- /Users/alexandremguy/code/hw/october14/currency_converter.rb/currency
require 'set'

money_example_one = Currencies.new(10,"USD")
money_example_two = Currencies.new(10,"USD")
money_example_three = Currencies.new(40,"EUR")
money_example_four = Currencies.new(70,"EUR")
money_example_five= Currencies.new(3000,"YEN")

money_example_one.multiply(2)
test = money_example_one.code!


money_example_one.validate_addition(money_example_two)
money_example_four.validate_sub(money_example_three)

money_example_one.amount! + money_example_two.amount!



usd_converter = CurrencyConverter.new({"USD" => 1.00, "EUR" => 0.91, "GBP" => 0.82, "INR" => 66.71, "CAD" => 1.31, "YEN" => 104.115})

usd_converter.currency_object_check(money_example_one.code!, money_example_three.code!)

usd_converter.currency_object_check(money_example_five.code!, money_example_three.code!)

usd_converter.keyss
usd_converter.get_em(money_example_five.code!)

usd_converter = CurrencyConverter.new(Currencies.new(1, "USD"))

usd_converter == money_example_one

# ~> LoadError
# ~> cannot load such file -- /Users/alexandremguy/code/hw/october14/currency_converter.rb/currency
# ~>
# ~> /Users/alexandremguy/code/hw/october14/currency_converter.rb/currencyconverter.rb:1:in `require_relative'
# ~> /Users/alexandremguy/code/hw/october14/currency_converter.rb/currencyconverter.rb:1:in `<top (required)>'
# ~> /Users/alexandremguy/code/hw/october14/currency_converter.rb/playground.rb:2:in `require_relative'
# ~> /Users/alexandremguy/code/hw/october14/currency_converter.rb/playground.rb:2:in `<main>'
