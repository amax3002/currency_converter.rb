require_relative "./currencies"         # => true
require_relative "./currencyconverter"  # => true
require 'set'                           # => false

money_example_one = Currencies.new(1,"USD")    # => #<Currencies:0x007f9d04861598 @amount=1, @code="USD">
money_example_two = Currencies.new(2,"USD")    # => #<Currencies:0x007f9d04861048 @amount=2, @code="USD">
money_example_three = Currencies.new(4,"EUR")  # => #<Currencies:0x007f9d04860968 @amount=4, @code="EUR">
money_example_four = Currencies.new(7,"EUR")   # => #<Currencies:0x007f9d048600d0 @amount=7, @code="EUR">
money_example_five= Currencies.new(3,"INR")    # => #<Currencies:0x007f9d0485bcd8 @amount=3, @code="INR">

money_example_one.multiply(2)   # => "2 in USD"
test = money_example_one.code!  # => "USD"


money_example_one.validate_addition(money_example_two)  # => "The total amount of the currency is 3"
money_example_four.validate_sub(money_example_three)    # => "The total amount of the currency is 3"

money_example_one.amount! + money_example_two.amount!  # => 3



usd_converter = Currency_converter.new({"USD" => 1.00, "EUR" => 0.91, "GBP" => 0.82, "INR" => 66.71, "CAD" => 1.31})  # => #<Currency_converter:0x007f9d0485a040 @conversion_rates={"USD"=>1.0, "EUR"=>0.91, "GBP"=>0.82, "INR"=>66.71, "CAD"=>1.31}>

usd_converter.currency_object_check(money_example_one.code!, money_example_three.code!)  # => "0.91 USD to EUR"

usd_converter.currency_object_check(money_example_five.code!, money_example_three.code!)  # => "73.30769230769229 INR to EUR"

usd_converter.keyss                             # => ["USD", "EUR", "GBP", "INR", "CAD"]
usd_converter.get_em(money_example_five.code!)  # => {"USD"=>1.0, "EUR"=>0.91, "GBP"=>0.82, "INR"=>66.71, "CAD"=>1.31}

usd_converter = Currency_converter.new(Currencies.new(1, "USD"))  # => #<Currency_converter:0x007f9d048581a0 @conversion_rates=#<Currencies:0x007f9d048581c8 @amount=1, @code="USD">>

usd_converter == money_example_one  # => false

# >> 1 INR is 0.014990256333383302 in USD
# >> 1 INR is 0.013641133263378806 in EUR
# >> 1 INR is 0.012292010193374307 in GBP
# >> 1 INR is 0.019637235796732128 in CAD
