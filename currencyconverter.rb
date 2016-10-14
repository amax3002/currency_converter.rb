require_relative "./currencies"

class Currency_converter

  def initialize (first = 0, second = 0)
    @first = first
    @second = second
  end

  def add_amount
    @first.amount! + @second.amount!
  end

  def compare_amount
    @first.amount! == @second.amount!
  end

  def compare_code
    @first.code! == @second.code!
  end

  def total_compare
    compare_code == true && compare_amount == true ? "The currency amounts and codes match": "The currency amounts and codes do NOT match"
  end

  def validate_addition
    if !compare_code
      "Currency codes don't match therefore they can't add togeather"
    else
      "The total amount of the currency is #{add_amount}"
    end
  end

end
