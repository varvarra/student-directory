
@students = [] # an empty array  accessible to all methods
def input_students
  puts "Please enter the names and cohort of the students"
  puts "To finish, just hit return twice"

  name = gets.chomp
  # while the name is not empty, repeat this block of code
  while !name.empty? do
    cohort = gets.chomp
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

    @students << {name: name, cohort: cohort.to_sym, hobby: :skiing, country_of_birth: :UK, height: :"180"}

    if  @students.count == 1
       student_string = "student"
     else student_string = "students"
    end
    puts "Now we have #{@students.count} #{student_string}"

    # get another name from the user
    name = gets.delete("\n")

  end
    @students.sort_by {|x| x[:cohort]}
  # return the sorted list of students

end


def interactive_menu
  loop do
    print_menu  # 1. print the menu and ask the user what to do
    process(gets.chomp) # 2. read the input and save it into a variable
    #selection = gets.chomp
    # 3. do what the user has asked
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2" # show the students
      show_students
    when "9"
      exit # this will terminate the programm
    else
      puts "I don't know what you meant, try again"
  end
end

def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end

def print_students_list # got rid of the directory method and improved the code of exercise 8(12)
  if @students.count >= 1
  i = 0
  while i < @students.count
      puts "#{@students[i][:name]} (#{@students[i][:cohort]} cohort)".center(80),
      "Hobby - #{@students[i][:hobby]}".center(80),
      "Country of Birth - #{@students[i][:country_of_birth]}".center(80),
      "Height - #{@students[i][:height]}cm".center(80)
      puts "--------".center(80)
      #puts "#{student_info}".center(80)
      i += 1
    end
      @students.sort_by {|x| x[:cohort]}
  else
    puts "You don't have any students on the list"
  end
end # ending the method

def print_footer
  if  @students.count == 1
     student_string = "student" #creating a new variable student_s which changes depending on the student.count and insert it to the string below
   else student_string = "students"
  end
  puts "Overall, we have #{@students.count} great #{student_string}\n".center(80)
end

#@students = input_students # need this because input_students returns sorted by cohort
interactive_menu
