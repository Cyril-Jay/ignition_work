course_info = [
  { par: 5, stroke: 7 },
  { par: 4, stroke: 5 },
  { par: 3, stroke: 3 },
  { par: 4, stroke: 4 },
  { par: 4, stroke: 4 },
  { par: 3, stroke: 2 },
  { par: 4, stroke: 5 },
  { par: 5, stroke: 5 },
  { par: 4, stroke: 5 },
  { par: 5, stroke: 7 },
  { par: 4, stroke: 4 },
  { par: 4, stroke: 4 },
  { par: 3, stroke: 3 },
  { par: 4, stroke: 5 },
  { par: 4, stroke: 5 },
  { par: 4, stroke: 4 },
  { par: 3, stroke: 3 },
  { par: 5, stroke: 6 },
  ]
course_par = 0
stroke_count = 0

course_info.each do | score |
  course_par += score[:par]
  stroke_count += score[:stroke]
end

ending_total = course_par - stroke_count

result = if course_par > stroke_count
  "You were #{ending_total} under par."
elsif course_par < stroke_count
   "You were #{ending_total * -1} over par."
else course_par == stroke_count
  "You were par for the couse"
end

puts "Par for the course is #{course_par}. You scored #{stroke_count}. #{result}"
