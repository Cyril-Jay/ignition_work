crypt_of_civilization =['Comptometer', 'box of phonograpic records', 'set of scales', 'plastic savings bank', 'Toast-O-Lator', 'sample of aluminium foil', 'Donald Duck doll']

extra = ['container of beer', 'Lionel model train set', 'Ingraham pocket watch']

crypt_of_civilization = extra + crypt_of_civilization

puts "==========="

puts crypt_of_civilization.length
puts crypt_of_civilization.first
puts crypt_of_civilization.last
puts crypt_of_civilization[1]
puts crypt_of_civilization[3]
puts crypt_of_civilization[-2]
puts crypt_of_civilization.index('Toast-O-Lator')

puts crypt_of_civilization.include?('container of beer')
puts crypt_of_civilization.include?('Toast-O-Lator')
puts crypt_of_civilization.include?('plastic bird')

puts "==========="

item_list = 0
while item_list < crypt_of_civilization.length do
  puts crypt_of_civilization[item_list].inspect
  item_list += 1
end

puts "==========="

crypt_of_civilization.each do |item_list|
  puts item_list
end

puts "==========="

junk = ['Comptometer', 'set of scales', 'sample of aluminium foil']
crypt_of_civilization = crypt_of_civilization - junk
puts crypt_of_civilization
