require_relative "./currencies"
require_relative "./currencyconverter"

money_example_one = Currencies.new(2,"USD")
money_example_two = Currencies.new(2,"USD")
money_example_three = Currencies.new(4,"EUR")
money_example_four = Currencies.new(7,"EUR")
money_example_five= Currencies.new(3,"YEN")

money_example_one.multiply(2)

money_example_one.validate_addition(money_example_three)
money_example_four.validate_sub(money_example_three)

money_example_one.amount! + money_example_two.amount!

equal_eachother_example = Currency_converter.new(money_example_one, money_example_two)
not_equal_eachother_example = Currency_converter.new(money_example_one, money_example_three)

puts "_"*40
puts "This is the first currency object with an amount of #{money_example_one.amount!}"
puts "This is the second currency object with an amount of #{money_example_two.amount!}"
puts "_"*40

puts "This is the first currency object with a currency code of #{money_example_one.code!}"
puts "This is the second currency object with a currency code of #{money_example_two.code!}"
puts "_"*40

puts "Comparison test for currency one and two:
#{equal_eachother_example.total_compare}"
puts "Comparison test for currency one and three:
#{not_equal_eachother_example.total_compare}"
puts "_"*40

puts equal_eachother_example.validate_addition

puts not_equal_eachother_example.validate_addition

# !> /Users/alexandremguy/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/seeing_is_believing-3.0.0/lib/seeing_is_believing/safe.rb:19:in `bind': bind argument must be an instance of Array (TypeError)
# !> \tfrom /Users/alexandremguy/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/seeing_is_believing-3.0.0/lib/seeing_is_believing/safe.rb:19:in `block (3 levels) in build'
# !> \tfrom /Users/alexandremguy/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/seeing_is_believing-3.0.0/lib/seeing_is_believing/event_stream/producer.rb:90:in `record_exception'
# !> \tfrom /Users/alexandremguy/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/seeing_is_believing-3.0.0/lib/seeing_is_believing/the_matrix.rb:69:in `block in <top (required)>'
# !> /Users/alexandremguy/code/hw/october14/currency_converter.rb/playground.rb: /Users/alexandremguy/code/hw/october14/currency_converter.rb/currencies.rb:65: syntax error, unexpected keyword_end, expecting end-of-input (SyntaxError)
