require_relative 'seed.rb'
require_relative 'error_handling.rb'

require "tty-prompt"
require "tty-progressbar"
require "artii"
require "colorize"

usernmae = ""
username = ARGV[0]

$golf = seed
$prompt = TTY::Prompt.new
artii = Artii::Base.new
system "clear"

$bar = TTY::ProgressBar.new("Playing round...[:bar]", total: 50)



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# SELECTION & CHECK METHODS
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

def select_course
    course = $prompt.enum_select("What course did you play?", $course_array)
end

def select_condition
    condition = $prompt.enum_select("What is the condition of the course?", $conditions_array)
end

def select_round
    rounds = $prompt.enum_select("What round would you like to select?", $golf.print_scores)
end


def select_name
    name = $prompt.enum_select("Choose a professional?", $players_array)
end

def select_club
    club = $prompt.enum_select("What club would you like?", $clubs_array)
end

def select_swing_speed
    puts "How hard would you like to swing? (1-100)"
    swing_speed = gets.chomp
end


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# CRUD QUERIES
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# USER ADD A ROUND
def add_score(golf)
    # USER INPUT NAME & VALIDATION
    name = check_name
    course = select_course
    condition = select_condition  
    score = check_score
    $golf.add_round(name,score,course,condition)
    puts "You (#{name}) played at #{course} on a #{condition} and scored: #{score}".colorize(:green)

end


# USER UPDATE PREVIOUS ROUND
def update_round(golf)
    system "clear"
    round = select_round
    # puts round.select(name)
    option = $prompt.enum_select("What would you like to change?", "Name","Score", "Course","Condition","All","None")
    case option
        when "Name"
            puts "Update Name"
            puts "Your name was: #{round.name}".colorize(:yellow)
            round.name = check_name
            puts "#{round}".colorize(:yellow)
        when "Score"
            puts "Update Score"
            puts "Your score was: #{round.score}".colorize(:yellow)
            round.score = check_score
            puts "#{round}".colorize(:yellow)
        when "Course"
            puts "Update Course"
            puts "The course was: #{round.course}".colorize(:yellow)
            round.course = select_course
            puts "#{round}".colorize(:yellow)
        when "Condition"
            puts "Update Condition"
            puts "The conditions were: #{round.condition}".colorize(:yellow)
            round.condition = select_condition
            puts "#{round}".colorize(:yellow)
        when "All"
            puts "Update All"
            # Name Update
            puts "Your name was: #{round.name}".colorize(:yellow)
            name = check_name   
            round.name = name
            # Course Update
            puts "The course was: #{round.course}".colorize(:yellow)
            round.course = select_course
            # Conditions Update
            puts "The conditions were: #{round.condition}".colorize(:yellow)
            round.condition = select_condition
            # Score Update
            puts "The score was: #{round.score}".colorize(:yellow)
            round.score = check_score        
            puts "#{round}".colorize(:yellow)
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


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Play the Pros FUNCTIONALITY
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
def play_the_pros
    # User add & select inputs
    # USER INPUT NAME & VALIDATION
    name = check_name   
    professional1 = select_name
    professional2 = select_name
    course = select_course
    condition = select_condition
    system "clear"
    # Starting the game
    puts "On the first tee we have: #{name}, #{professional1}, #{professional2} at #{course} on a #{condition} day!".colorize(:yellow)
    sleep(3)
    puts "Great Shot! See you at the clubhouse!".colorize(:blue)

    50.times do
        sleep(0.1)
        $bar.advance  # by default increases by 1
      end


    # Multipliers
    condition_difficulty = course.difficulty
    course_difficulty = condition.difficulty
    # puts "Course Multiplier: #{course.difficulty}"
    # puts "Condition Multiplier: #{condition.difficulty}"
    overall_multiplier = ((course.difficulty + condition.difficulty)/2) + 1    
    #puts "Overall Multiplier #{overall_multiplier}"
    # random score (68-85) x multiple of condition
    # Generating name Scores
    odds = rand(68..72)
    name_score = odds * overall_multiplier
    professional1_score = odds * overall_multiplier
    professional2_score = odds * overall_multiplier

    # Printing user scores
    system "clear"
    # puts "Overall Multiplier #{overall_multiplier}"
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

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Play a Hole FUNCTIONALITY
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# def play_a_hole

#     # GENERATE HOLE
#     length = rand(150..500).to_i
#     if length > 150 && length < 275
#         difficulty = 0.2
#         level = "Easy"
#     elsif length > 276 && length < 400
#         difficulty = 0.4
#         level = "Medium"
#     else
#         difficulty = 0.6
#         level = "Hard"
#     end

#     puts "The length of the whole is #{length}m"
#     puts "THe difficulty is: #{level} - #{difficulty}"

#     distance_left = length
#     while distance_left > 15

#         # USER SELECTS CLUB & SPEED
#         club = select_club
#         puts "Club Used: #{club}"
#         swing_speed = select_swing_speed
#         puts "Swing Speed: #{swing_speed}"

#         # GENERATE LENGTH OF HIT & Accuracy
#         club_hit = rand(0.1..1) * swing_speed.to_i
#         puts "Hit Distance: #{club_hit}m" 
#         puts "Distance Left: #{distance_left}m"



#         # CALCULATE DISTANCE LEFT
#         distance_left.to_i - club_hit.to_i
#         puts "Distance Left: #{distance_left}m"
#     end

# end 








#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# MENU FUNCTIONALITY
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# WELCOME USER & SHOW MENU
option = "" 


# GET USERS MENU OPTIONS
def select_option
    answer = $prompt.enum_select("What would you like to do today?".colorize(:yellow), "View rounds", "Add latest round", "Update a previous round", "Delete a round","Play with the pros","Play a Hole","Exit")
    return answer
end

# MENU OPERATION
while option !="Exit"    
    system "artii 'CaddyMate'"
    puts "Welcome #{username} to CaddyMate, add your score or have a match with the pros!".colorize(:blue)
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
            play_the_pros
        when "Play a Hole"
            play_a_hole
        when "Exit"
            #
        else
            puts "Invalid Option"
    end
    system "clear"
end


