require_relative '../error_handling.rb'
require_relative '../seed.rb'
require_relative '../classes/rounds.rb'
require_relative '../classes/score.rb'



describe 'Test check_name object' do
    it "Testing the check name to ensure it is not empty" do
        check_name()
        expect(check_name()).to_not be_nil
    end    
end



# describe "Check that scores & inputs are assigned correctly" do
#     it "Add player to score" do
#         player = "Ben Allan"
#         score = 72
#         course = "Bargara Golf Course"
#         condition = "Fine"
#         score = Score.new(player, score, course, condition)
#         expect(score.player).to eq("Ben Allan")
#         expect(score.score).to eq(72)
#         expect(score.course).to eq("Bargara Golf Course")
#         expect(score.condition).to eq("Fine")
#     end
# end


# describe "Add score dataset to the rounds ocject" do
#     it "Adding score object to rounds array" do


#         # INPUTS
#         name = "Ben Allan"
#         score = 72
#         course = "Bargara Golf Course"
#         condition = "Fine"
   
#         # OBJECT CREATION
#         match = Score.new(name,score,course,condition)
#         rounds = Rounds.new(match)          


#         # EXPECTATIONS
#         expect(rounds.match).to eq(["Ben Allan", 72, "Bargara Golf Course","Fine"])

#     end
# end