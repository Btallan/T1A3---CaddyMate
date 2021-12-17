class Condition
    attr_accessor :difficulty
    def initialize(condition,difficulty)
        @condition = condition
        @difficulty = difficulty
    end

    def to_s
        "#{@condition}"
    end

end