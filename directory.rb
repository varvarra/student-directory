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
  puts "Please enter the names and cohort of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.delete("\n")

  # while the name is not empty, repeat this block of code
  while !name.empty? do # until the input message is not empty do the following
    # add the student hash to the array
    cohort = gets.delete("\n")
    if cohort.empty?
       cohort = "November"
    end

    while !["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"].include? cohort
      puts "You've made a typo, retype"
      cohort = gets.chomp
      if cohort.empty?
         cohort = "November"
          break
      end
    end

    students << {name: name, cohort: cohort.to_sym, hobby: :skiing, country_of_birth: :UK, height: :"180"}
    # now, we print a line to let the user know how many students have been entered so far
    if  students.count == 1
       student_string = "student" #creating a new variable student_s which changes depending on the student.count and insert it to the string below
     else student_string = "students"
    end
    puts "Now we have #{students.count} #{student_string}"

    # get another name from the user
    name = gets.delete("\n")
    cohorts = []

  end
  # return the list of students
  students.sort_by {|x| x[:cohort]} # students variable is changed to the sorted by cohort version, and print(students) method will now print a sorted list of students by cohort (as it takes the result of curretn method as an argument)
end

def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end

def directory(students)

i = 0
while i < students.count

    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)".center(80),
    "Hobby - #{students[i][:hobby]}".center(80),
    "Country of Birth - #{students[i][:country_of_birth]}".center(80),
    "Height - #{students[i][:height]}cm".center(80)
    puts "--------".center(80)
    #puts "#{student_info}".center(80)
    i += 1
  end

end # ending the method


def print_footer(students)
  if  students.count == 1
     student_string = "student" #creating a new variable student_s which changes depending on the student.count and insert it to the string below
   else student_string = "students"
  end
  puts "Overall, we have #{students.count} great #{student_string}\n".center(80)
end

=begin def length_lessthan12(students)

  puts "A list of students whose name is shorter than 12 characters:"
  students.each do |student|
    if student[:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def names_start_with_S(students, letter = nil) # second argument- nil if defaul is nil

  puts "A list of students whose names begin in #{letter}:"

  students.each do |student|

    if student[:name][0].downcase == nil || student[:name][0].downcase == letter.downcase # index number refers to the first letter in the name :name
      puts "#{student[:name]} (#{student[:cohort]} cohort) whose hobby is #{student[:hobby]}"
    end
  end
end
=end

def not_empty_print(students)
  if students.count >= 1
    print_header
    directory(students)
    print_footer(students)
  else
    puts "You don't have any students on the list"
  end
end



students = input_students #array of students returned by input_students is assigned to variable students
# we should call the methods for something to happen
not_empty_print(students)
#print_header
# passing the students variable to the methods as an argument (called "names" in both cases)
#directory(students)
#print_footer(students)
