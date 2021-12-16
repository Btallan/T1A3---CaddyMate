class Score
    attr_reader :player, :score, :course, :condition
    def initialize(player,score, course, condition)
        @player = player
        @score = score
        @course = course
        @condition = condition
    end

    def to_s
        "#{@player} scored: #{@score} on #{@course} on a #{@condition} day."
    end
end