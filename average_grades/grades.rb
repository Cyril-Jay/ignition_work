jane_grades = [ 98, 95, 88, 97, 74 ]
samantha_grades = [ 85, 93, 98, 88, 49 ]
matt_grades = [ 87, 93, 89, 97, 65 ]

def average(grades)
  sum = 0
  grades.each {| grade | sum += grade }
  sum / grades.size.to_f
end

def letter_grade(average)
  if average >= 90
    puts "Got an A"
  elsif average >= 80
    puts "Got a B"
  elsif average >= 70
    puts "Got a C"
  elsif average >= 60
    puts "Got a D"
  else
    puts "Got an F"
  end
end

puts average(jane_grades)
letter_grade(average(jane_grades))

highest_grades =[ "Johnny", "Jane", "Sally", "Elizabeth", "Michael" ]

def rankings(students)
  students.each_with_index { |name, rank| puts "#{ rank + 1 } #{ name }"}
end

rankings(highest_grades)
