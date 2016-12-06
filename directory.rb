

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

# and then print them
puts "The students of Villains Academy"
puts "-------------"
# On every iteration, the current name will be assigned to the value student that we specified between two vertical bars.
students.each do |student|
  puts student
end

# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
