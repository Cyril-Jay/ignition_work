width = 8.0
lenght = 20.0
height = 8.0 / 12.0

cubic_ft = lenght * width * height

if cubic_ft < 50
  total_price = 20
elsif cubic_ft < 150
  total_price = 50
elsif cubic_ft < 300
  total_price = 100
elsif cubic_ft < 300
  total_price = 150
end
puts "Price Quote: $#{total_price}"
puts "Snow Size: #{cubic_ft} cubic ft"
