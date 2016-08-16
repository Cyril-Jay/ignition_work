menu = {
    "hamburger" => 400,
    "hot dog" => 300,
    "fries" => 200,
    "chips" => 100,
    "water" => 125,
    "soda" => 150,
  }


puts "What would you like for lunch?"
customer_order = []
customer_input = gets.chomp
customer_order = customer_input.split(",")
# if customer_input.!include?[menu]
#   puts "sorry we dont have #{customer_input}."
# end



cost = 0
customer_order.each do |item|
  cost += menu[item]
end

puts "Your cost is #{ '%.2f' % (cost / 100.to_f)}."
# get the itme
# store the item to an array or check it to the menu hash
# from that array add the value from that item key
# sum up the value
