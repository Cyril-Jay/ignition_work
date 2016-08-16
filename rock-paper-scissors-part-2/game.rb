print "Welcome to RPS part 2! \n"

score_player = 0
score_computer = 0

while score_player <= 2 || score_computer <= 2
  puts "The current score is Player: #{score_player}, Computer: #{score_computer}"
  puts "Rock Paper or Scissors?
Enter R for Rock, P for Paper or S for Scissors"
  input_player = gets.chomp
  input_computer = ["r", "p", "s"].sample
    if input_player == "p"
      puts "You've entered Paper."
    elsif input_player == "r"
      puts "You've entered Rock."
    elsif input_player == "s"
      puts "You've entered Scissors."
    else
      puts "Invalid entry, try again."
    end

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
      score_computer += 1
    elsif input_player == "r" && input_computer == "s" ||
    input_player == "p" && input_computer == "r" ||
    input_player == "s" && input_computer == "p"
      puts "You win!"
      score_player += 1
    else input_player == input_computer
      puts "You have chosen the same. Tie game."
    end
  if score_player == 2
    puts "You've won the whole thing!"
    break
  elsif score_computer == 2
    puts "Computer wins, your loss."
    break
  else
  end
end
