class Currencies


def initialize (amount = nil, code ="")
  @amount = amount
  @code = code
end

def amount!
  @amount
end

def code!
  @code
end

def multiply(number)
  "#{@amount * number} in #{@code}"
end



def compare_amount_and_code(other)
  return self.amount! == other.amount! && self.code! == other.code!
end


def compare_amount_code(other)
  return self.code! == other.code!
end

def add_amount(other)
  self.amount! + other.amount!
end

def sub_amount(other)
  self.amount! - other.amount!
end


def validate_addition(other)
  raise "DifferentCurrencyCodeError" if !compare_amount_code(other)

  "The total amount of the currency is #{add_amount(other)}"
end


def validate_sub(other)
  raise "DifferentCurrencyCodeError" if !compare_amount_code(other)

  "The total amount of the currency is #{sub_amount(other)}"

end

end
