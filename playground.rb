require_relative "./currencies"         # => true
require_relative "./currencyconverter"  # => true
require 'set'                           # => false

money_example_one = Currencies.new(2,"USD")    # => #<Currencies:0x007ffda983d890 @amount=2, @code="USD">
money_example_two = Currencies.new(2,"USD")    # => #<Currencies:0x007ffda983d2f0 @amount=2, @code="USD">
money_example_three = Currencies.new(4,"EUR")  # => #<Currencies:0x007ffda983cda0 @amount=4, @code="EUR">
money_example_four = Currencies.new(7,"EUR")   # => #<Currencies:0x007ffda983c580 @amount=7, @code="EUR">
money_example_five= Currencies.new(3,"INR")    # => #<Currencies:0x007ffda9837f58 @amount=3, @code="INR">

money_example_one.multiply(2)   # => "4 in USD"
test = money_example_one.code!  # => "USD"


money_example_one.validate_addition(money_example_two)  # => "The total amount of the currency is 4"
money_example_four.validate_sub(money_example_three)    # => "The total amount of the currency is 3"

money_example_one.amount! + money_example_two.amount!  # => 4



usd_converter = Currency_converter.new({"USD" => 1.00, "EUR" => 0.91, "GBP" => 0.82, "INR" => 66.71, "CAD" => 1.31})  # => #<Currency_converter:0x007ffda9836310 @conversion_rates={"USD"=>1.0, "EUR"=>0.91, "GBP"=>0.82, "INR"=>66.71, "CAD"=>1.31}>

usd_converter.currency_object_check(money_example_one.code!, money_example_three.code!)  # => "0.91 USD to EUR"

usd_converter.currency_object_check(money_example_five.code!, money_example_three.code!)  # => "73.30769230769229 INR to EUR"

usd_converter.keyss                             # => ["USD", "EUR", "GBP", "INR", "CAD"]
usd_converter.get_em(money_example_five.code!)  # => {"USD"=>1.0, "EUR"=>0.91, "GBP"=>0.82, "INR"=>66.71, "CAD"=>1.31}

# >> EUR
# >> 1 USD is 0.91 in EUR
# >> GBP
# >> 1 USD is 0.82 in GBP
# >> INR
# >> 1 USD is 66.71 in INR
# >> CAD
# >> 1 USD is 1.31 in CAD
