puts "What is the width?"
user_width = gets.chomp.to_i
puts "What is the height?"
user_height = gets.chomp.to_i

def perimeter(width, height = nil)
  if height.nil?
    width * 4
  else
    (height * 2) + (width * 2)
  end
end

puts "The perimeter is #{ perimeter(user_width, user_height) }"
puts perimeter(user_width)
