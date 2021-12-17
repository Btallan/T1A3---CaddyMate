class Score
    attr_accessor :player, :score, :course, :condition
    def initialize(player,score, course, condition)
        @player = player
        @score = score
        @course = course
        @condition = condition
    end

    def to_s
        "#{@player} scored: #{@score} on #{@course} on a #{@condition} day."
    end

    # def check_score(score)
    #     #  CHECKING USER SCORE IS BETWEEN 1 TO 300
    #     if score.to_i > 1 && score.to_i < 300
    #         $golf.add_round(name,score,course,condition)
    #         puts "You (#{name}) played at #{course} on a #{condition} and scored: #{score}".colorize(:green)
    #     elsif score.to_i <= 1
    #         puts "You can't score less than 1!".colorize(:red)
    #     else
    #         # IF SCORE OVER 300 PROMPT USER
    #         puts "Did you really score over 300? (y/n)"
    #         answer = gets.chomp
    #         if answer == "y"
    #             $golf.add_round(name,score,course,condition)
    #             puts "You (#{name}) played at #{course} on a #{condition} and scored: #{score}".colorize(:red)    
    #         elsif
    #             puts "Score was entered in-correctly!"
    #         end
    #     end  
    # end


end