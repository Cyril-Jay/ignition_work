adult_price = 12.80
child_price = 4
adult_attending = 4
child_attending = 2
total_price = (adult_price * adult_attending) + (child_price * child_attending)
total_price_adult = total_price / adult_attending


puts "Total admission price for the group would be #{total_price}."
puts "But since children don't have money the adults would pay #{total_price_adult} each to cover the cost."
