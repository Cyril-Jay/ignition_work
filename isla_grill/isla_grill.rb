dinner_total = 178
tip = [15, 18, 20, 25].sample
percent = tip * 0.01
tip_value = dinner_total * percent
puts "The tip should come to $ #{tip_value}."
