voters = [
   {
    "First Name" => "Jon",
    "Last Name" => "Smith",
    "Age" => 25,
    "Income" => 50_000,
    "Household Size" => 1,
    "Gender" => "Male",
    "Education" => "College" },

  {
    "First Name" => "Jane",
    "Last Name" => "Davies",
    "Age" => 30,
    "Income" => 60_000,
    "Household Size" => 3,
    "Gender" => "Female",
    "Education" => "High School" },

  {
    "First Name" => "Sam",
    "Last Name" => "Farelly",
    "Age" => 32,
    "Income" => 80_000,
    "Household Size" => 2,
    "Gender" => "Unspecified",
    "Education" => "College" },

  {
    "First Name" => "Joan",
    "Last Name" => "Favreau",
    "Age" => 35,
    "Income" => 65_000,
    "Household Size" => 4,
    "Gender" => "Female",
    "Education" => "College" },

  {
    "First Name" => "Sam",
    "Last Name" => "McNulty",
    "Age" => 38,
    "Income" => 63_000,
    "Household Size" => 3,
    "Gender" => "Male",
    "Education" => "College" },

  {
    "First Name" => "Mark",
    "Last Name" => "Minahan",
    "Age" => 48,
    "Income" => 78_000,
    "Household Size" => 5,
    "Gender" => "Male",
    "Education" => "High School" },

  {
    "First Name" => "Susan",
    "Last Name" => "Umani",
    "Age" => 45,
    "Income" => 75_000,
    "Household Size" => 2,
    "Gender" => "Female",
    "Education" => "College" },

  {
    "First Name" => "Bill",
    "Last Name" => "Perault",
    "Age" => 24,
    "Income" => 45_000,
    "Household Size" => 1,
    "Gender" => "Male",
    "Education" => "Did Not Complete High School" },

  {
    "First Name" => "Doug",
    "Last Name" => "Stamper",
    "Age" => 45,
    "Income" => 75_000,
    "Household Size" => 1,
    "Gender" => "Male",
    "Education" => "College" },

  {
    "First Name" => "Francis",
    "Last Name" => "Underwood",
    "Age" => 52,
    "Income" => 100_000,
    "Household Size" => 2,
    "Gender" => "Male",
    "Education" => "College" },

  ]

# Average age
age_sum = voters.inject(0) { |sum, info| sum + info["Age"] }
print "Average voter age: "
puts age_sum / voters.size.to_f

# Average income
income_sum = voters.inject(0) { |sum, info| sum + info["Income"] }
print "Average voter income: "
puts income_sum / voters.size.to_f

# Average household size
household_sum = voters.inject(0) { |sum, info| sum + info["Household Size"] }
print "Average household size: "
puts household_sum / voters.size.to_f

# Female Percentage
female_voters = 0
voters.each do |info|
  if info["Gender"] == "Female"
    female_voters += 1
  end
end
print "Female voter percentage: "
puts (female_voters * 100) / voters.size

# Male Percentage
male_voters = 0
voters.each do |info|
  if info["Gender"] == "Male"
    male_voters += 1
  end
end
print "Male voter percentage: "
puts (male_voters * 100) / voters.size

# Unspecified Gender Percentage
unspecified_voters = 0
voters.each do |info|
  if info["Gender"] == "Unspecified"
    unspecified_voters += 1
  end
end
print "Unspecified gender percentage: "
puts voters.size / unspecified_voters

# Percent of those who obtained a college education level
college_edu_voters = 0
voters.each do |info|
  if info["Education"] == "College"
    college_edu_voters += 1
  end
end
print "College level educaton percentage: "
puts (college_edu_voters * 100 ) / voters.size

# Percent of those who obtained a high school education level
highschool_edu_voters = 0
voters.each do |info|
  if info["Education"] == "High School"
    highschool_edu_voters += 1
  end
end
print "High School level education percentage: "
puts (highschool_edu_voters * 100 ) / voters.size

# Percent of those that did not finish high school
non_edu_voters = 0
voters.each do |info|
  if info["Education"] == "Did Not Complete High School"
    non_edu_voters += 1
  end
end
print "Lower then Hight School education percentage: "
puts voters.size / non_edu_voters
