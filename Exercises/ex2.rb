=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this block of code
  while !name.empty?  do #
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
=begin
def print(students)
  # USE .each_with_index to print num
  # puts "What letter would you like the names to start with?"
  # first_letter = gets.chomp

  for i = 0 to students.length

    nameString = students.keys[i]

    if nameString.start_with? "A"
        puts "#{nameString}"
    end

  end
=end

def names_start_with_S(students, letter = nil) # second argument- nil if defaul is nil

  puts "A list of students whose names begin in #{letter}:"

  students.each do |student|

    if student[:name][0].downcase == nil || student[:name][0].downcase == letter.downcase # index number refers to the first letter in the name :name
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end


def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students

print_header
# passing the students variable to the methods as an argument (called "names" in both cases)
puts names_start_with_S(students, "s")
print_footer(students)
