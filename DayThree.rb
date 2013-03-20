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
  	@students.map do |student|
  	  student.student_as_string
  	end
  end

  def sorted_students
  	@students.sort!
  	
  end
end

#student_list.cohort = "march"     #is setting the cohort attribute of student list instance
#puts student_list.cohort          #getting cohort attribute of student list instance


class Student
	def initialize (student_first_name, student_last_name)
		@student_first_name = student_first_name
		@student_last_name = student_last_name
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

    def view_student_first_name
    	@student_first_name
    end

    def view_student_last_name
    	@student_last_name
    end

    def student_as_string
    	student_output = [@student_first_name, @student_last_name, @languages, @one_rep_max].to_s
    	student_output
    end
end

march_list = StudentList.new("march")

student_sam = Student.new("sam", "strong")
student_bob = Student.new("bob", "smith")
student_zob = Student.new("zob", "smith")

march_list.add(student_sam)
march_list.add(student_bob)
march_list.add(student_zob)

puts march_list.view_cohort_name

#puts march_list.view_students

puts march_list.sorted_students

#march_list.remove(student_bob.view_student_name)

puts march_list.view_students

#puts student_bob.view_one_rep_max

#puts student_sam.view_student_first_name
#puts ["something", "somththing else", ["in array","more in array"],"out inner array", 4]
