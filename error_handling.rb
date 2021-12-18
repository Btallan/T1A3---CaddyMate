def check_score
    validity = false
    while validity != true
        puts "What did you score?"
        score = gets.chomp.to_i
        #  CHECKING USER SCORE IS BETWEEN 1 TO 300
        if score.to_i > 1 && score.to_i < 300        
            validity = true
            #puts "Score is valid: 1-300"
        elsif score.to_i <= 1
            puts "You can't score less than 1!".colorize(:red)
            redo
        else
            # IF SCORE OVER 300 PROMPT USER
            puts "Did you really score over 300? (y/n)"
            answer = gets.chomp
            if answer == "y"
                validity = true
                #puts "Score is valid: 300+"
            elsif
                puts "Score was entered in-correctly!"
                redo
            end
        end 
    end
    return score
end

def check_name
    name = ""
    while name == ""
        puts "What's your name?"
        name = gets.chomp
        if !name.empty?
            return name
            break
        else
            puts "Please enter a valid name!"      
        end
    end
end