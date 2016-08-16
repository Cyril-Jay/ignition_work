sales = 0
while sales < 100 do
  puts "Enter your sales data."
  sales_input = gets.chomp
  sales = sales + sales_input.to_i
  if sales >= 100
    puts "You have reached 100"
  end
end
