transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts transactions.first
# * What is the value of the second transaction?
puts transactions[1]
# * What is the value of the fourth transaction?
puts transactions[3]
# * What is the value of the last transaction?
puts transactions.last
# * What is the value of the second from last transaction?
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts transactions.fetch(5)
# * How many transactions are there in total?
puts transactions.size
# * How many positive transactions are there in total?
sum = 0
transactions.each do |positive|
  if positive > 0
    sum += 1
  end
end
puts sum
# * How many negative transactions are there in total?
sum = 0
transactions.each do |negative|
  if negative < 0
    sum += 1
  end
end
puts sum
# * What is the largest withdrawal?
withdrawls = []
transactions.each do |negative|
  if negative < 0
    withdrawls << negative
  end
end
puts withdrawls.min
# * What is the largest deposit?
deposits = []
transactions.each do |positive|
  if positive > 0
    deposits << positive
  end
end
puts deposits.max
# * What is the small withdrawal?
puts withdrawls.max
# * What is the smallest deposit?
puts deposits.min
# * What is the total value of all the transactions?
puts transactions.inject{|sum, value| value + sum}
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
puts transactions.inject{|sum, value| value + sum + 239_900}

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts best_records.count
# * Who are all the artists listed?
best_records.each_key {|name| puts name}
# * What are all the album names in the hash?
best_records.each_value {|album| puts album}
# * Delete the `Eminem` key-value pair from the list.
best_records.delete("Eminem")
# * Add your favorite musician and their best album to the list.
best_records["Tool"] = "10,000 Days"
# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "MTV Unpluged in New York"
# * Is `Nirvana` included in `best_records`?
puts best_records.include?("Nirvana")
# * Is `Soundgarden` included in `best_records`?
puts best_records.include?("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
if best_records.include?("Soundgarden") == false
  best_records["Soundgarden"] = "Lounder Than Love"
end
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each do |band, album|
  if band.size <= 6
    puts "#{band}'s #{album}"
  end
end
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each do |band, album|
  if album.size > 10
    puts "#{band}'s #{album}"
  end
end
