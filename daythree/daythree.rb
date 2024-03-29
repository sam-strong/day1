#Day 3

class StudentList

#students [attribute]
#cohort [attribute]
#add [interaction/method]
#remove [interaction/method]
#view [interaction/method]
  def initialize(cohort)
  	@cohort = cohort
  	@students = []
  	puts "#{cohort} student list has been created"
  end

  def add(student)
  	@students << student
    #puts "#{student} has been added"
  end

  def remove(student)
  	@students.delete(student)
  	#puts "#{student} has been removed"
  end

  def view_cohort_name
  	@cohort
  end

  def view_students
  	@students
  end

  def sort
  	@students.sort!
  end
end

#student_list.cohort = "march"     #is setting the cohort attribute of student list instance
#puts student_list.cohort          #getting cohort attribute of student list instance


class Student
	def initialize (student_name)
		@student_name = student_name
		@languages = []
		@one_rep_max = 0
	end

    def add_language (language)
    	@languages << language
    end

    def remove_language (language)
    	@languages.delete(language)
    end

    def view_languages
    	@languages
    end

    def change_one_rep_max (one_rep_max)
    	@one_rep_max = one_rep_max
    end

    def view_one_rep_max
    	@one_rep_max
    end

    def view_student_name
    	@student_name
    end

end

march_list = StudentList.new("march")

student_sam = Student.new("sam")
student_bob = Student.new("bob")

march_list.add (student_sam.view_student_name)
march_list.add (student_bob.view_student_name)

puts march_list.view_cohort_name

puts march_list.view_students

puts march_list.sort

march_list.remove (student_bob.view_student_name)

puts march_list.view_students

puts student_bob.view_one_rep_max

