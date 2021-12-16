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
    course = $prompt.select("What course did you play on?", $golf.print_courses)
    return course
end


# USER ADD A ROUND
def add_score(golf)
    course = select_course
    puts course
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


