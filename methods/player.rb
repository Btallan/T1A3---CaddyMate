class Player

    def initialize(name)
        @name = name
    end

    def to_s
        "#{@name}"
    end

    # CHECKS PLAYER NAME TO SEE IF VALID, TRUE TO SAVE, FALSE TO RE-QUESTION
    # def player_name_check(name)
    #     name = ""
    #     while name = ""
    #         puts "What's your name?"
    #         name = gets.chomp
    #         if !name.empty?
    #             break
    #         else
    #             puts "Please enter a valid name!"      
    #         end
    #     end
    # end

end