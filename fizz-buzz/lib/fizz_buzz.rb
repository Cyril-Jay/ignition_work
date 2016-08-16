numbers = 0

while numbers != 100 do
  numbers += 1
  if numbers % 3 == 0 && numbers % 5 == 0
      puts "FizzBuzz"
  elsif numbers % 5 == 0
    puts "Buzz"
  elsif numbers % 3 == 0
    puts "Fizz"
  else
    puts numbers
  end
end
