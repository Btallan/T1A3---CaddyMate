require_relative 'seed.rb'
require "tty-prompt"
require "artii"
require "colorize"

$golf = seed
$prompt = TTY::Prompt.new
artii = Artii::Base.new
system "clear"


# SELECTION QUERIES
def select_course
    course = $prompt.enum_select("What course did you play?", $course_array)
end

def select_condition
    condition = $prompt.enum_select("What is the condition of the course?", $conditions_array)
end

def select_round
    rounds = $prompt.enum_select("What round would you like to select?", $golf.print_scores)
end

def select_player
    player = $prompt.enum_select("Choose a professional?", $players_array)
end


# USER ADD A ROUND
def add_score(golf)
    puts "What's your name?"
    name = gets.chomp
    course = select_course
    condition = select_condition
    puts "What did you score?"
    score = gets.chomp
    golf.add_round(name,score,course,condition)
    # golf.print_scores
    puts "You (#{name}) played at #{course} on a #{condition} and scored: #{score}".colorize(:red)

end


# USER UPDATE PREVIOUS ROUND
def update_round(golf)
    system "clear"
    round = select_round
    # puts round.select(player)
    option = $prompt.enum_select("What would you like to change?", "Name","Score", "Course","Condition","All","None")
    case option
        when "Name"
            puts "Update Name"
            puts "Your name was: #{round.player}"
            puts "What should we update the name to?"           
            name = gets.chomp
            round.player = name
            puts round
        when "Score"
            puts "Update Score"
            puts "Your score was: #{round.score}"
            puts "What should the score be?"
            score = gets.chomp
            round.score = score
            puts round
        when "Course"
            puts "Update Course"
            puts "The course was: #{round.course}"
            puts "What course were you playing on?"
            course = select_course
            round.course = course
            puts round
        when "Condition"
            puts "Update Condition"
            puts "The conditions were: #{round.condition}"
            puts "What were the conditions when you played?"
            condition = select_condition
            round.condition = condition
            puts round
        when "All"
            puts "Update All"
            # Name Update
            puts "Your name was: #{round.player}"
            puts "What should we update the name to?"           
            name = gets.chomp
            round.player = name
            # Course Update
            puts "What course were you playing on?"
            course = select_course
            round.course = course
            # Conditions Update
            puts "What were the conditions when you played?"
            condition = select_condition
            round.condition = condition
            # Score Update
            puts "What should the score be?"
            score = gets.chomp
            round.score = score
            puts round
        when "None"
            #
        else
            puts "Invalid Option"        
    end
end


# USER DELETE ROUND
def delete_round(golf)
    puts "What round would you like to delete?"
    round = select_round
    puts "Are you sure you want to delete #{round.score} at #{round.course}? (y/n)"
    answer = gets.chomp
    if answer == "y"
        golf.delete_game(round)
        puts "Round deleted, time for a beer?"
    elsif answer == "n"
        puts "Deletion Aborted"
    else
        puts "Invalid Option"
    end
end




## GAME FUNCTIONALITY ##
def game
    # User add & select inputs
    puts "What's your name?"
    name = gets.chomp
    professional1 = select_player
    professional2 = select_player
    course = select_course
    condition = select_condition
    system "clear"
    # Starting the game
    puts "On the first tee we have: #{name}, #{professional1}, #{professional2} at #{course} on a #{condition} day!".colorize(:yellow)
    sleep(3)
    puts "Great Shot! See you at the clubhouse!".colorize(:blue)
    sleep(5)
    # Multipliers
    condition_difficulty = course.difficulty
    course_difficulty = condition.difficulty
    # puts "Course Multiplier: #{course.difficulty}"
    # puts "Condition Multiplier: #{condition.difficulty}"
    overall_multiplier = ((course.difficulty + condition.difficulty)/2) + 0.4    
    # puts "Overall Multiplier #{overall_multiplier}"
    # random score (68-85) x multiple of condition
    # Generating player Scores
    name_score = rand(68..85) * overall_multiplier
    professional1_score = rand(68..85) * overall_multiplier
    professional2_score = rand(68..85) * overall_multiplier

    # Printing user scores
    system "clear"
    puts "So here's how the group went!".colorize(:yellow)
    puts "#{name} scored: #{name_score.truncate()}"
    puts "#{professional1} scored: #{professional1_score.truncate()}"
    puts "#{professional2} scored: #{professional2_score.truncate()}"
    if name_score < professional1_score && name_score < professional2_score
        puts "Congratulations you won!".colorize(:green)
    elsif name_score > professional1_score && name_score < professional2_score || name_score < professional1_score && name_score > professional2_score
        puts "Nice work out there!".colorize(:yellow)
    else
        puts "Better luck next time!".colorize(:red)
    end
end




## MENU FUNCTIONALITY ##


# WELCOME USER & SHOW MENU

option = "" 


# GET USERS MENU OPTIONS
def select_option
    answer = $prompt.enum_select("What would you like to do today?".colorize(:yellow), "View rounds", "Add latest round", "Update a previous round", "Delete a round","Play with the pros","Exit")
    return answer
end
# MENU OPERATION
while option !="Exit"    
    system "artii 'CaddyMate'"
    puts "Welcome to CaddyMate, add your score or have a match with the pros!".colorize(:blue)
    option = select_option
    case option
        when "View rounds"
            $golf.print_scores
        when "Add latest round"
            add_score($golf)
        when "Update a previous round"
            update_round($golf)
        when "Delete a round"
            delete_round($golf)
        when "Play with the pros"
            game
        when "Exit"
            #
        else
            puts "Invalid Option"
    end
    print "Press Enter key to continue..."
    gets
    system "clear"
end


