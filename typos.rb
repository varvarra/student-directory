def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
   # square brackets
  # get the first name
  name = gets.chomp
  # gets
  # while the name is not empty, repeat this code
  while !name.empty? do
  # name=name.empty
  # add the student hash to the array
  students << {name: name, cohort: :november}
  #change the symbols
  puts "Now we have #{students.count} students"
   #students not student
  # get another name from the user
  name = gets.chomp
   # gets
  end
 # return the array of students
  students
end


def print_header
 # change the name of the method
  puts "The students of my cohort at Makers Academy"
   # puts
  puts "-------------"
  # change the quotes
end

def print(students)
  students.each do |student|
  # student  and array name students
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    # can't have single
    # quotes with string interpolation, and brackets syntax wasn't right
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
   # brackets syntax
end


students = input_students
 # input_students
print_header
print(students)
# parentheses not curly brackets
print_footer(students)
 #brackets
