<<<<<<< HEAD
require_relative "./error"
=======
class Currency
>>>>>>> 57b438412763d8425812c738456f5726ac480234


class Currency

  attr_accessor :amount, :code


  def initialize (amount = nil, code = "")
    @amount = amount
    @code = code
  end

  # def amount
  #   @amount
  # end
  #
  # def code
  #   @code
  # end





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

    Currency.new(add(other), self.code)
  end


  def -(other)
    raise DifferentCurrencyCodeError if !compare_amount_code(other)

    Currency.new(sub(other), code)
  end

  def *(number)
    Currency.new(amount * number, code)
  end

end
