hangman_word = "storms"
guessed_letters = []
wrong_guess = 0

puts "Let's play hangman."
while wrong_guess != 6
  puts "Enter a letter."
  user_input = gets.chomp
  if hangman_word.split(//).include?(user_input)
    guessed_letters << user_input
  else
    wrong_guess += 1
    puts "Sorry that is not corect. #{ 6 - wrong_guess } attempts left."
  end

  def print_puzzle (word, letters = [])
    word.each_char do |guess|
      if letters.include?(guess)
        print "#{ guess } "
      else
        print "_ "
      end
    end
    puts ""
  end
  print_puzzle(hangman_word, guessed_letters)
# here how would i figure out the win condition?
  if wrong_guess == 6
    puts "Sorry you lose."
  end
end
