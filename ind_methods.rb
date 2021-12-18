# require_relative 'seed.rb'
# require_relative './classes/rounds.rb'
# require_relative './classes/player.rb'
# require_relative './classes/course.rb'
# require_relative './classes/condition.rb'
# require_relative './classes/score.rb'
# require_relative './classes/club.rb'
# require_relative 'error_handling.rb'
# require_relative 'ind_methods.rb'





# # #----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# # # SELECTION & CHECK METHODS
# # #----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# def select_course
#     course = $prompt.enum_select("What course did you play?", $course_array)
# end

# def select_condition
#     condition = $prompt.enum_select("What is the condition of the course?", $conditions_array)
# end

# def select_round
#     rounds = $prompt.enum_select("What round would you like to select?", $golf.print_scores)
# end


# def select_name
#     name = $prompt.enum_select("Choose a professional?", $names_array)
# end

# def select_club
#     club = $prompt.enum_select("What club would you like?", $clubs_array)
# end

# def select_swing_speed
#     puts "How hard would you like to swing? (1-100)"
#     swing_speed = gets.chomp
# end




#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# CRUD QUERIES
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# # USER ADD A ROUND
# def add_score(golf)
#     # USER INPUT NAME & VALIDATION
#     name = check_name
#     course = select_course
#     condition = select_condition  
#     score = check_score
#     $golf.add_round(name,score,course,condition)
#     puts "You (#{name}) played at #{course} on a #{condition} and scored: #{score}".colorize(:green)

# end


# # USER UPDATE PREVIOUS ROUND
# def update_round(golf)
#     system "clear"
#     round = select_round
#     # puts round.select(name)
#     option = $prompt.enum_select("What would you like to change?", "Name","Score", "Course","Condition","All","None")
#     case option
#         when "Name"
#             puts "Update Name"
#             puts "Your name was: #{round.name}".colorize(:yellow)
#             round.name = check_name
#             puts "#{round}".colorize(:yellow)
#         when "Score"
#             puts "Update Score"
#             puts "Your score was: #{round.score}".colorize(:yellow)
#             round.score = check_score
#             puts "#{round}".colorize(:yellow)
#         when "Course"
#             puts "Update Course"
#             puts "The course was: #{round.course}".colorize(:yellow)
#             round.course = select_course
#             puts "#{round}".colorize(:yellow)
#         when "Condition"
#             puts "Update Condition"
#             puts "The conditions were: #{round.condition}".colorize(:yellow)
#             round.condition = select_condition
#             puts "#{round}".colorize(:yellow)
#         when "All"
#             puts "Update All"
#             # Name Update
#             puts "Your name was: #{round.name}".colorize(:yellow)
#             name = check_name   
#             round.name = name
#             # Course Update
#             puts "The course was: #{round.course}".colorize(:yellow)
#             round.course = select_course
#             # Conditions Update
#             puts "The conditions were: #{round.condition}".colorize(:yellow)
#             round.condition = select_condition
#             # Score Update
#             puts "The score was: #{round.score}".colorize(:yellow)
#             round.score = check_score        
#             puts "#{round}".colorize(:yellow)
#         when "None"
#             #
#         else
#             puts "Invalid Option"        
#     end
# end


# # USER DELETE ROUND
# def delete_round(golf)
#     puts "What round would you like to delete?"
#     round = select_round
#     puts "Are you sure you want to delete #{round.score} at #{round.course}? (y/n)"
#     answer = gets.chomp
#     if answer == "y"
#         golf.delete_game(round)
#         puts "Round deleted, time for a beer?"
#     elsif answer == "n"
#         puts "Deletion Aborted"
#     else
#         puts "Invalid Option"
#     end
# end
