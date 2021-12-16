require_relative 'seed.rb'
require "tty-prompt"

$golf = seed
$prompt = TTY::Prompt.new
system "clear"



# WELCOME USER & SHOW MENU
puts "Welcome to CaddyMate, add your score or have a match with the pros!"
option = "" 

# GET USERS MENU OPTIONS
def select_option
    answer = $prompt.enum_select("What would you like to do today?", "View rounds", "Add latest round", "Update a previous round", "Delete a round","Play with the pros","Exit")
    return answer
end

def select_course
    # puts $course_array
    course = $prompt.enum_select("What course did you play?", $course_array)
end

def select_condition
    condition = $prompt.enum_select("What is the condition of the course?", $conditions_array)
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
    golf.print_scores
    # puts "You (#{name}) played at #{course} on a #{condition} and scored: #{score}"

end


while option !="Exit"
    option = select_option
    case option
        when "View rounds"
            $golf.print_scores
        when "Add latest round"
            add_score($golf)
        when "Update a previous round"
            puts "Update a round"
        when "Delete a round"
            puts "Delete a round"
        when "Play with the pros"
            puts "Play with the pros"
        when "Exit"
            #
        else
            puts "Invalid Option"
    end
    print "Press Enter key to continue..."
    gets
    system "clear"
end


