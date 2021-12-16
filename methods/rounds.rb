class Rounds
    attr_reader :rounds
    def initialize(rounds)
        @rounds = rounds
    end

    def to_s
        puts "#{@rounds}"
    end


    # Show round
    def print_scores
        @rounds.each do |round|
            puts round
        end
    end

end