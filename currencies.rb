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
#
# def compare_amount
#   first.amount! == second.amount!
# end
#
# def compare_code
#   first.code! == second.code!
# end
#
# def total_compare
#   compare_code == true && compare_amount == true ? "The currency amounts and codes match": "The currency amounts and codes do NOT match"
# end
#
def validate_addition(other)
  if !compare_amount_code(other)
    "Currency codes don't match therefore they can't add togeather"
  else
    "The total amount of the currency is #{add_amount(other)}"
  end
end

def validate_sub(other)
  if !compare_amount_code(other)
    "Currency codes don't match therefore they can't subtracted togeather"
  else
    "The total amount of the currency is #{sub_amount(other)}"
  end
end

end
