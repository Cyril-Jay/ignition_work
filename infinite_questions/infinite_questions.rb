require 'pry'

customer_input = nil

while customer_input != 'no'
  puts "Would you like anything else?"
  customer_input = gets.chomp
  binding.pry

end

puts "OK, have a nice day."
