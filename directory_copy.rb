def print_header
    puts "The students of Villains Academy"
    puts "------------"
end

def print(students)
      a_student = []
      month_category = gets.chomp
          students.each_with_index do |student, index| if student[:cohort] == month_category
              a_student << student[:cohort]
              puts "#{index+1}: #{student[:name]} #{student[:dob]}"
              end
          end
        if a_student.count == 1
            puts "Now we have 1 students"
        else
            title_ = "Overall, we have #{a_student.count} great students"    
            puts title_.center(title_.length + 6, "*")
        end
end
def input_students
    puts "Please enter the names of the students"
    puts "Please enter your cohort month"
    puts "To finish, just hit return twice"
    #create an empty array
    students = []
    # get the first name
    name = gets.chomp
    month = gets.chomp
    #while the name is not empty, repeat this code
    while !name.empty? do
        if !month.empty?
            students << {name: name, cohort: month, dob: :"01/01/90"}
            puts "Now we have #{students.count} students"
            # get another name from the user
            name = gets.chomp
            month = gets.chomp
            #add the student hash to the array
        else
            month.empty?
                puts "nothing was inserted, please enter dob"
            month = gets.chomp
        end
    end
    #return the array of students
    students
end
students = input_students
print_header
print(students)


# def print(students)
#       a_student = []    
#       students.each_with_index do |student, index| if student[:name].length <  12
#       a_student << student[:name]
#         puts "#{index+1}: #{student[:name]} (#{student[:cohort]} cohort)"
#       end
#     end
#     puts "Overall, we have #{a_student.count} great students"
# end
# def print_footer(students)
#     puts "Overall, we have #{students.count} great students"
# end
#print_footer(students)