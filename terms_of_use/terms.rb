def disclaimer
  puts "***DISCLAIMER***
This code may not work the way you expect it to.
By using this temperamental program, you agree not to
sue the pants off of its creator.
***"
end

disclaimer

user_input = ''
while user_input != "y"
  puts "You must accept our disclaimer to proceed! Do you accept? (y/n)"
  user_input = gets.chomp
  disclaimer
end

puts "3 + 2 = #{rand(6)}"

disclaimer
