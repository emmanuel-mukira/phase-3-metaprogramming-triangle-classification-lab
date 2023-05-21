class Triangle
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    validate_triangle
    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
    # triangle error code
  end
  private
  def validate_triangle
   if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError, "Each side length must be larger than 0."
       elsif (@side_1 + @side_2 <= @side_3) || (@side_1 + @side_3 <= @side_2) || (@side_2 + @side_3 <= @side_1)
      raise TriangleError, "The sum of any two sides must be greater than the third side."
    end
  end
end
