REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

# YOUR CODE GOES BELOW
require 'pry'
puts "Here are your clubs."

selected_clubs = []

10.times do
  puts "A #{available_clubs.sample.to_s.gsub("_", " ")} has been chosen to be used."
  selected_clubs << available_clubs.sample
end

puts selected_clubs

# binding.pry
# if !selected_clubs.include?(:putter)
#   puts "Hey!  You need a  to play!"
# end
# if selected_clubs.include?(missing_clubs)
#   puts "Hey!  You need a  to play!"
# when selected_clubs.include?(:driver)
#   puts "Hey!  You need a Driver to play!"
# when selected_clubs.include?(:pitching_wedge)
#   puts "Hey!  You need a Pitching Wedge to play!"
# else
# end
#
# missing_clubs.each do |needed_clubs|
#   if selected_clubs.include?(needed_clubs)
#     puts "Hey!  You need a #{needed_clubs.to_s.gsub("_", " ")} to play!"
#   end
# end
#
# NEEDED_CLUBS = [:putter, :driver, :pitching_wedge]
#
# missing_clubs = NEEDED_CLUBS - selected_clubs
#
# missing_clubs.each do |needed_clubs|
#   puts "Hey!  You need a #{needed_clubs.to_s.gsub("_", " ")} to play!"
# end
