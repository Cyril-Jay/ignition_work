def intro
greet_number = rand(4) + 1
  if greet_number == 1
    print "Hii"
  elsif greet_number == 2
    print "Yo"
  elsif greet_number == 3
    print "Hey"
  else greet_number == 4
    print "Howdy"
  end
end

def greeting
  puts "What is your name youngling?"
  user_name = gets.chomp
  puts "Do you have a prefered language?"
  language = gets.chomp
  if language == 'spanish'
    puts "Hola #{ user_name }."
  elsif language == 'italian'
    puts "Ciao #{ user_name }."
  elsif language == 'french'
    puts "Bonjour #{ user_name }."
  else
    puts "#{ intro } #{ user_name }"
  end
end

greeting
