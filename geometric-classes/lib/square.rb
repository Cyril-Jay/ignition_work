class Square
  attr_reader :length, :width, :x, :y

  def initialize (length, x = 0, y = 0)
    @length = length
    @width = length
    @x = x
    @y = y
  end

  def diameter
    @length * Math::sqrt(2)
  end

  def area
    @length**2
  end

  def perimeter
    @length * 4
  end

  def contains_point?(x, y)
    right = (@x + @length)/2.0
    left = (@x - @length)/2.0
    top = (@y + @length)/2.0
    bottom = (@y - @length)/2.0
      if (x <= right && x >= left) && (y <= top && y >= bottom)
        @contains_point = true
      else
        @contains_point = false
      end
  end

end
