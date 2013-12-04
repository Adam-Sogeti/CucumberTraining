class Calculator

  attr_accessor :total

  def start_with(start_with_value)
    @total = extract_value(start_with_value)
  end

  def add(add_value)
    @total += extract_value(add_value)
  end

  def subtract(subtract_value)
    @total -= subtract_value.to_i
  end

  def multiply(multiply_by_value)
    @total *= extract_value(multiply_by_value)
  end

  def divide(divide_by)
    @total /= extract_value(divide_by)
  end

  def extract_value(value)
    if value.include?('.')
      value.to_f
    else
      value.to_i
    end
  end

  def less_than(value)
    extract_value(value) < @total
  end

end