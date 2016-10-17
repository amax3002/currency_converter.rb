
require_relative "./currency"           # => true
require_relative "./currencyconverter"  # => true
require 'set'                           # => false

money_example_one = Currency.new(10,"USD")    # => #<Currency:0x007f91240a6f10 @amount=10, @code="USD">
money_example_two = Currency.new(10,"USD")    # => #<Currency:0x007f91240a6970 @amount=10, @code="USD">
money_example_three = Currency.new(40,"EUR")  # => #<Currency:0x007f91240a63a8 @amount=40, @code="EUR">
money_example_four = Currency.new(70,"EUR")   # => #<Currency:0x007f91240a5e08 @amount=70, @code="EUR">
money_example_five= Currency.new(3000,"YEN")  # => #<Currency:0x007f91240a5908 @amount=3000, @code="YEN">
money_example_six= Currency.new(150,"INR")    # => #<Currency:0x007f91240a53b8 @amount=150, @code="INR">

Currency.new(200,"INR").==Currency.new(200,"INR")  # => true




money_example_one.+money_example_two     # => #<Currency:0x007f91240a4710 @amount=20, @code="USD">
money_example_four.-money_example_three  # => #<Currency:0x007f91240a5890 @amount=30, @code="EUR">
money_example_five.*3                    # => #<Currency:0x007f912409fbc0 @amount=9000, @code="YEN">






usd_converter = CurrencyConverter.new({"USD" => 1.00, "EUR" => 0.91, "GBP" => 0.82, "INR" => 66.71, "CAD" => 1.31, "YEN" => 104.115})  # => #<CurrencyConverter:0x007f912409f620 @conversion_rates={"USD"=>1.0, "EUR"=>0.91, "GBP"=>0.82, "INR"=>66.71, "CAD"=>1.31, "YEN"=>104.115}>

usd_converter.converter(Currency.new(5743,"YEN"), "USD")  # => #<Currency:0x007f912409eec8 @amount=55.16015943908179, @code="USD">
