class Score
    attr_accessor :name, :score, :course, :condition
    def initialize(name,score, course, condition)
        @name = name
        @score = score
        @course = course
        @condition = condition
    end

    def to_s
        "#{@name} scored: #{@score} on #{@course} on a #{@condition} day."
    end

end