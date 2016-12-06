

# let's put all the students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each do |name|
    puts name
  end # ending the block of code
end # ending the method

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# we should call the methods for something to happen
print_header
# passing the students variable to the methods as an argument (called "names" in both cases)
print(students)
print_footer(students)
