require_relative "./error"


class Currency

  attr_accessor :amount, :code


  def initialize (amount = nil, code = "")
    @amount = amount
    @code = code
  end



  def ==(other)
    return amount == other.amount && code == other.code
  end


  def compare_amount_code(other)
    return code == other.code
  end

  def add(other)
    amount + other.amount
  end

  def sub(other)
    amount - other.amount
  end


  def +(other)
    raise DifferentCurrencyCodeError if !compare_amount_code(other)

    Currency.new(add(other), code)
  end


  def -(other)
    raise DifferentCurrencyCodeError if !compare_amount_code(other)

    Currency.new(sub(other), code)
  end

  def *(number)
    Currency.new(amount * number, code)
  end

end
