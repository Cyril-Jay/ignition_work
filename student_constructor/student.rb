class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end
end

class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(student_hash)
    @first_name = student_hash[:first_name]
    @last_name = student_hash[:last_name]
    @grades = student_hash[:grades]
    @averge = total_grades
  end

  def average
    sum = 0
    @grades.each do |grade|
      sum += grade
    end
    sum/@grades.length
  end
end
