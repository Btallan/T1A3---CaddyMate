class Course
    def initialize(course)
        @course = course
    end

    def to_s
        "#{@course}"
    end


    def print_courses
        puts course_array.each{|course| puts course}
    end
end