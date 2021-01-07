class Triangle

  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def num_array
    array = []
    array << @num1
    array << @num2
    array << @num3
    array
  end

  def is_not_zero?
    @num1 != 0 && @num2 != 0 && @num3 != 0 ? true : false  
  end

  def is_equilateral?
    num_array.uniq.length > 1 ? false : true 
  end

  def is_isosceles?
    @num1 == @num2 && @num1 > @num3 || @num1 == @num3 && @num1 > @num2 || @num2 == @num3 && @num2 > @num1 ? true : false
  end

  def is_scalene?
    @num1 + @num2 > @num3 && @num1 + @num3 > @num2 && @num2 + @num3 > @num1
  end

  def kind
    if is_not_zero?() && is_equilateral?()
      :equilateral
    elsif is_not_zero?() && is_isosceles?()
      :isosceles
    elsif is_not_zero?() && is_scalene?()
      :scalene
    else
      raise TriangleError
    end 
  end

  class TriangleError < StandardError
  end
end

# Triangle.new(2, 2, 2).kind
# Triangle.new(10, 10, 10).kind
# Triangle.new(3, 4, 4).kind
# Triangle.new(4, 3, 4).kind
# Triangle.new(4, 4, 3).kind
# Triangle.new(10, 10, 2).kind
# Triangle.new(3, 4, 5).kind
#Triangle.new(10, 11, 12).kind
#Triangle.new(5, 4, 2).kind
#Triangle.new(0.4, 0.6, 0.3).kind

#Triangle.new(0, 0, 0).kind
#Triangle.new(1, 1, 3).kind
#Triangle.new(2, 4, 2).kind
#Triangle.new(3, 4, -5).kind
#Triangle.new(7, 3, 2).kind


