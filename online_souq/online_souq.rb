require 'pry'
souq_items = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric", "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug", "large Persian rug", "extra large Persian rug"]
souq_cart = []
requested_items = []

puts "Hello and welcome to the Souq.  May I ask your name?"
customer_name = gets.chomp

puts "Well #{customer_name} what can I get for you? (Please input your item. If your are finished please type finished)"



while true
  customer_item = gets.chomp
  if souq_items.include?(customer_item)
    souq_cart << customer_item
  elsif customer_item == "finished"
    break
  else
    puts "Sorry #{ customer_name } we don't have #{ customer_item } here."
    requested_items << customer_item
  end
end

puts "OK #{ customer_name } here is your list so far:"
souq_cart.each do |items|
  puts items
end

puts "Oh, and #{ customer_name } we will keep an eye out for the other items you requested."
requested_items.each do |requested|
  puts requested
end
