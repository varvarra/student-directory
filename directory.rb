
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this block of code
  while !name.empty? do # until the input message is not empty do the following
    # add the student hash to the array
    students << {name: name, cohort: :november}
    # now, we print a line to let the user know how many students have been entered so far
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end # ending the block of code
end # ending the method

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students #array of students returned by input_students is assigned to variable students
# we should call the methods for something to happen
print_header
# passing the students variable to the methods as an argument (called "names" in both cases)
print(students)
print_footer(students)
