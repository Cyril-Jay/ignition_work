puts "What item would you like?"
user_item = gets.chomp

puts "How many #{user_item} would you like?"
user_amount = gets.chomp


accepted_anwsers = user_amount.index("tons")

if accepted_anwsers.nil?
  user_amount = user_amount.to_i
  user_amount.times do
    puts "#{user_item}"
  end

else

  while
    amount_of = rand(15)
    puts "#{user_item}"
    if amount_of == 0
      break
    end
  end
end

print "Well here ya go!"
