puts "Would you like to play a Hard or Easy game?"
user_choice = gets.chomp
score = 0

require 'pry'

if user_choice == "Easy" || user_choice =="easy"
  comp_number = rand(10) + 1
  binding.pry
  puts "I have picked a number between 1 and 10, guess which one."
  user_number = gets.chomp
  while user_number != comp_number.to_s
    puts "No good, guess again."
    user_number = gets.chomp
    score = score + 1
    if user_number == comp_number.to_s
      puts "Well done you guessed it."
      puts "It took you #{score} tries to guess correctly."
      break
    end
  end
elsif user_choice == "Hard" || user_choice == "hard"
  comp_number = rand(20) + 1
  binding.pry
  puts "I have picked a number between 1 and 20, guess which one."
  user_number = gets.chomp
  while user_number != comp_number.to_s
    puts "No good, guess again."
    user_number = gets.chomp
    score = score + 1
    if user_number == comp_number.to_s
      puts "Well done you guessed it."
      puts "It took you #{score} tries to guess correctly."
      break
    end
  end
end
