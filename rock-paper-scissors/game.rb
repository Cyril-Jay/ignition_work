puts "Rock Paper or Scissors?
Enter R for Rock, P for Paper or S for Scissors"
input_player = gets.chomp

if input_player == "p"
  puts "You've entered Paper."
elsif input_player == "r"
  puts "You've entered Rock."
elsif input_player == "s"
  puts "You've entered Scissors."
else
  puts "Invalid entry, try again."
  exit!
end

input_computer = ["r", "p", "s"].sample

if input_computer == "r"
  puts "Computer has chosen Rock."
elsif input_computer == "p"
  puts "Computer has chosen Paper."
else input_computer == "s"
  puts "Computer has chosen Scissors."
end

if input_player == "r" && input_computer == "p" ||
input_player == "p" && input_computer == "s" ||
input_player == "s" && input_computer == "r"
  puts "You lose."
elsif input_player == "r" && input_computer == "s" ||
input_player == "p" && input_computer == "r" ||
input_player == "s" && input_computer == "p"
  puts "You win!"
else input_player == input_computer
  puts "You have chosen the same. Tie game."
end
