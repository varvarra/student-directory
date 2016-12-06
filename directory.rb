

# let's put all the students into an array
# we're storing the cohort month as a symbol, because we don't expect to treat it as a string
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
# we should call the methods for something to happen
print_header
# passing the students variable to the methods as an argument (called "names" in both cases)
print(students)
print_footer(students)
