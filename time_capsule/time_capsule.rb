time_capsule = []

puts "Hello and welcome to Eternity storage solutions! Your name please."
name = gets.chomp

puts "OK #{name} what can we hold on to for you today and forever? (If you are all set please enter 'finished')"

user_amount = 0

while true
  user_input = gets.chomp
  if user_input == "finished"
    break
  else
    puts "And how many will you be leaving with us?"
    user_amount = gets.chomp.to_i
    if user_amount <= 0
      puts "I'm sorry but we can't store nothing. Please input something else. (or 'finished' if you are done)"
    else
      user_input += " (#{user_amount})"
      time_capsule << user_input
      puts "Anything else? (If not input 'finished')"
    end
  end
end

puts "So if I have this strait #{name} you are giveing us the following FOREVER."

time_capsule.each do |storage|
  puts "> #{storage}"
end
