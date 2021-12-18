require_relative '../error_handling.rb'
require_relative '../seed.rb'
require_relative '../golf.rb'
# require_relative '../ind_methods.rb'
require_relative '../classes/rounds.rb'
require_relative '../classes/score.rb'


# Working
# describe 'Test check_name object' do
#     it "Testing the check name to ensure it is not empty" do
#         check_name
#         expect(check_name).to_not be_nil
#     end    
# end


## Working
# describe "Check that scores & inputs are assigned correctly" do
#     it "Add player to score" do
#         name = "Ben Allan"
#         score = 72
#         course = "Bargara Golf Course"
#         condition = "Fine"
#         score = Score.new(name, score, course, condition)
#         expect(score.name).to eq("Ben Allan")
#         expect(score.score).to eq(72)
#         expect(score.course).to eq("Bargara Golf Course")
#         expect(score.condition).to eq("Fine")
#     end
# end


# describe "Test user updating all data points" do
#     it "testing update all feature" do
#         round = select_round
#         puts "Update All"
#         # Name Update
#         puts "Your name was: #{round.name}".colorize(:yellow)
#         name = check_name   
#         round.name = name
#         # Course Update
#         puts "The course was: #{round.course}".colorize(:yellow)
#         round.course = select_course
#         # Conditions Update
#         puts "The conditions were: #{round.condition}".colorize(:yellow)
#         round.condition = select_condition
#         # Score Update
#         puts "The score was: #{round.score}".colorize(:yellow)
#         round.score = check_score        
#         puts "#{round}".colorize(:yellow)



#         # EXPECTATIONS
#         expect(round.name).to eq("Bob")
#         expect(round.course).to eq($course_array[5])
#         expect(round.condition).to eq($conditions_array[3])
#         expect(round.score).to eq(90)
#     end
# end

## Working
# describe "Testing: Play the Pros" do
#     it "Testing: whether scores are reasonable" do
#         # USER INPUTS
#         name = check_name   
#         professional1 = select_name
#         professional2 = select_name
#         course = select_course
#         condition = select_condition

#         # MULTIPLIERS & SCORES GENERATED
#         condition_difficulty = course.difficulty
#         course_difficulty = condition.difficulty
#         overall_multiplier = ((course.difficulty + condition.difficulty)/2) + 1    
#         odds = rand(68..72)

        
#         # RESULTS OF GAME
#         name_score = odds * overall_multiplier
#         professional1_score = odds * overall_multiplier
#         professional2_score = odds * overall_multiplier

#         #EXPECTATIONS 
#         expect(name_score).to be_between(68,300)

#     end
# end
