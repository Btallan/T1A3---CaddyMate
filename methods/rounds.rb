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

    # Add Round
    def add_round(name, score, course,condition)
        round = Score.new(name, score,course,condition)
        @rounds << round
    end

    # Delete Round
    def delete_game(round)
        rounds.delete(round)
    end

end