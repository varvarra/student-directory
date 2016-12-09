
@students = [] # an empty array  accessible to all methods

def interactive_menu
  loop do
    print_menu  # 1. print the menu and ask the user what to do
    process(STDIN.gets.chomp) # 2. read the input and save it into a variable
    #selection = gets.chomp
    # 3. do what the user has asked
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2" # show the students
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit # this will terminate the programm
    else
      puts "I don't know what you meant, try again"
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end

def print_students_list
  @students.each {|student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]] # put all elements of the students hash into array student_data
    csv_line = student_data.join(",") # convert it to the string and join it together using coma separator
    file.puts csv_line  # writing to the file using method puts
  end
  file.close # every time you open a file it needs to be closed
  puts "Student information successfully saved to the students.csv file"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    add_students_to_hash(name)
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
end

def add_students_to_hash(name, cohort = :november)
    @students << {name: name, cohort: cohort}
end


def load_students (filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each {
  |line| name, cohort = line.chomp.split(',')
  add_students_to_hash(name, cohort.to_sym)
}
file.close
 puts "Student list successfully loaded from the #{filename}" # message saying that the action was successful
end

def load_students_argv # changed name of the method
  filename = ARGV.first # first argument from the command line
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} student names from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

load_students_argv # gives information on the number of loaded students before inputing new ones
interactive_menu
