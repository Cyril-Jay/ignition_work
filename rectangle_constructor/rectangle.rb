class Rectangle
  attr_reader :width, :height

  def initialize (width, height = nil)
    @width = width
    if height.nil?
      @height = width
    else
      @height = height
    end
  end

  def area
    @area = width * height
  end
end

rectangle_1 = Rectangle.new(9, 4)
rectangle_2 = Rectangle.new(8)

puts rectangle_1.area
