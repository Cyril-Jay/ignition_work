#Write Ruby<->English answers here as comments in your code

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
sum = 0
array.each do |number|
  sum += number
end

puts sum

# * How would you print out each value of the array?
puts array.inspect

# * What is the sum of all of the even numbers?
sum = 0
array.each do |number|
  if number % 2 == 0
    sum += number
  end
end
puts sum

# * What is the sum of all of the odd numbers?
sum = 0
array.each do |number|
  if number % 2 != 0
    sum += number
  end
end
puts sum

# * What is the sum of all the numbers divisble by 5?
sum = 0
array.each do |number|
  if number % 5 == 0
    sum += number
  end
end
puts sum

# * What is the sum of the squares of all the numbers in the array?
sum = 0
squared_array = []
squared_array = array.map do |number|
  number * number
end
squared_array.each do |number|
  sum += number
end
puts sum


array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
array.each {|names| puts names.reverse.inspect}

# * What are the total number of characters in the names in `array`?
sum = 0
array.each do |name|
  sum += name.size
end
puts sum

# * How many names in `array` are less than 5 characters long?
sum = 0
array.each do |name|
  if name.size < 5
    sum += 1
  end
end
puts sum

# * How many names in `array` end in a vowel?
vowel_array = []
### I tried to get this to work with the .select method but could not figure out how to check for the vowels in a group when making it an array ['a', 'e', ect.].
array.each do |name|
  if name[-1].include?('a')
    vowel_array << name
  elsif name[-1].include?('e')
    vowel_array << name
  elsif name[-1].include?('i')
    vowel_array << name
  elsif name[-1].include?('o')
    vowel_array << name
  elsif name[-1].include?('u')
    vowel_array << name
  end
end
puts vowel_array.size
# * How many names in `array` are more than 5 characters long?
sum = 0
array.each do |name|
  if name.size > 5
    sum += 1
  end
end
puts sum

# * How many names in `array` are exactly 5 characters in length?
sum = 0
array.each do |name|
  if name.size == 5
    sum += 1
  end
end
puts sum

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

#  Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of the artists?
best_records.each do |name, album|
  puts name.inspect
end

# * How would you print out all the names of the albums?
best_records.each do |name, album|
  puts album.inspect
end

# * Which artist has the longest name?
### how would i print out both in the event of a tie?
best_records.each do |name, album|
  if name == best_records.keys.max_by
    puts name
  end
end

# * How would you change all the album titles for every artist to `Greatest Hits`?
best_records.keys.each {|name| best_records[name] = "Greatest Hits"}
puts best_records

# * How would you delete a key-value pair if the artist's name ends in a vowel?

puts best_records.delete_if {|name, album| name[-1] == 'a'  ||
  name[-1] == 'e' || name[-1] == 'i' || name[-1] == 'o'|| name[-1] == 'u'}
# how would i shorten this up? i feel like there should be a way to get rid of all those name[-1] and condence the vowles


ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
ages.each_key {|name| puts name.inspect}

# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
ages.each {|name, age| puts "#{name} is #{age} years old."}

# * How would you print out every person with odd numbered age?
ages.each do |name, age|
  if age.odd? == true
    puts name
  end
end

# * How would you delete everyone under 25 years of age?
ages2 = ages.dup
ages2.delete_if { |name, age| age < 25}
puts ages2

# * What is the name and age of everyone with a name greater than or equal to 5 characters?
ages.each do |name, age|
  if name.size >= 5
    puts "#{name} is #{age}"
  end
end

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?
people.each_key {|name| puts name}

# * How would you print out all the names of `people` and which company they work for?
people.each {|name, list| puts "#{name} works at #{list["company"]}."}

# * What are the names of all the children of everyone in `people`?
people.each {|name, list| puts list["children"]}

# * What are the names of all the companies that people work for?
people.each_value {|list| puts list["company"]}

# * How would you convert all the phone numbers to the same standard (pick one)?
people.each_value {|list| list["phone"] = list["phone"].sub('1-','').gsub('.','-').gsub('(','').gsub(')','').gsub(' ','-').prepend('1-')}
people.each_value {|list| puts list['phone']}
### here i coudn't figure out how to ignore the "1-" in the 4th hash. the .sub did it's job (and ignoring the fist instance), but i couldn't find a way to alter the code to only manipulate the 1- at the start of the numbers.


people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
people.each do |person|
  person.each_key {|name| puts name}
end

# * What are the names of all the children in `people`?
people.each do |person|
  person.each_value {|info| puts info["children"]}
end

# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
phone_numbers = {}
people.each do |person|
  person.each do |name, info|
    info.each do |data, specifics|
      if data == "phone"
        phone_numbers[name] = specifics
      end
    end
  end
end
puts phone_numbers

# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
employers = {}
people.each do |person|
  person.each do |name, info|
    info.each do |data, specifics|
      if data == "company"
        employers[name] = specifics
      end
    end
  end
end
puts employers

# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
children_count = {}
people.each do |person|
  person.each do |name, info|
    info.each do |data, specifics|
      if data == "children"
        children_count[name] = specifics.size
      end
    end
  end
end
puts children_count
