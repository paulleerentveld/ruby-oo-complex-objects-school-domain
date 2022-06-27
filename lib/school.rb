# code here!

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name =  name
        @roster = {}
    end

    def add_student(student,grade)

        (roster[grade] ||= []) << student
        
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        

        output = {}
        
        @roster.each do |grade, student| 
            output[grade] = student.sort
        end
        output

    end

end


