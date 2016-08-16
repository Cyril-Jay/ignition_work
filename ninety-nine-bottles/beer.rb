
bottle = 100

while bottle -= 1
  if bottle % 10 == 0
    puts "#{ bottle } bottles of beer on the wall, #{ bottle } bottles of beer!
    Take one down and pass it around, #{ bottle - 1 } bottles of beer on the wall. \n "

  elsif bottle == 2
    puts "#{ bottle } bottles of beer on the wall, #{ bottle } bottles of beer.
    Take one down and pass it around, #{ bottle - 1} bottle of beer on the wall. \n "

  elsif bottle > 1
    puts "#{ bottle } bottles of beer on the wall, #{ bottle } bottles of beer.
    Take one down and pass it around, #{ bottle - 1 } bottles of beer on the wall. \n "

  elsif bottle == 1
    puts "#{ bottle } bottle of beer on the wall, #{ bottle } bottle of beer.
    Take one down and pass it around, No more bottles of beer on the wall. \n "
    break
  end
end

puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
