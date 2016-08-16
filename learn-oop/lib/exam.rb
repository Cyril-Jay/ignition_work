class Exam
  attr_writer :assigned_to
  attr_accessor :grade

  def initialize(title, due_date)
    @title = title
    @due_date = due_date
    @assigned_to = nil
    @grade = nil
  end

end

class Rectangle
  attr_reader :length, :width
  attr_accessor :x, :y

  def initialize(length, width, x = 0, y = 0)
    @length = length
    @width = width
    @x = x
    @y = y
  end

  def area
    @area = length * width
  end

  def diagonal
    @diagonal = Math.sqrt((length ** 2 ) + (width ** 2))
  end

  def move_right
    @x += 1
  end

  def move_up
    @y += 1
  end

  def move_left
    @x -= 1
  end

  def move_down
    @y -= 1
  end

end
# Bonus
# maybe something along the lines of the following. but i may have misunderstood the bonus question
# def move_right
#   if x > 0
#     @x += 1
#   else
#     @x -= 1
#   end
# end
# def move_up
#   if y > 0
#     @y += 1
#   else
#     @y -= 1
#   end
# end
