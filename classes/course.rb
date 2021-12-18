class Course
    attr_accessor :difficulty
    def initialize(course,difficulty)
        @course = course
        @difficulty = difficulty
    end

    def to_s
        "#{@course}"
    end

end