require_relative 'methods/player.rb'
require_relative './methods/course.rb'
require_relative 'methods/condition.rb'
require_relative 'methods/score.rb'
require_relative './methods/rounds.rb'


def seed
    # CREATE AN ARRAY OF PROFESSINALS

    player1 = Player.new("Ben Allan")
    player2 = Player.new("Adam Scott")
    player3 = Player.new("Jon Rahm")
    player4 = Player.new("Collin Morikawa")
    player5 = Player.new("Tiger Woods")
    player6 = Player.new("Jack Nicklaus")
    player7 = Player.new("Bobby Jones")
    player8 = Player.new("Phil Mickelson")
    player9 = Player.new("Vijay Singh")
    player10 = Player.new("Greg Norman")

    $players_array = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10]

    # return players_array    

    # CREATE AN ARRAY OF COURSES
    course1 = Course.new("Bargara Golf Course")
    course2 = Course.new("Augusta National Golf Course")
    course3 = Course.new("Cypress Point Golf Course")
    course4 = Course.new("Royal Melbourne Golf Course")
    course5 = Course.new("St Andrews Links Golf Course")
    course6 = Course.new("Kingston Heath Golf Course")

    $course_array = [course1, course2, course3, course4, course5, course6]

    #puts course_array

    # CREATE AN ARRAY OF WEATHER TYPES
    condition1 = Condition.new("Fine", 1)
    condition2 = Condition.new("Windy", 0.2)
    condition3 = Condition.new("Raining", 0.5)
    condition4 = Condition.new("Morning Dew", 0.75)

    $conditions_array = [condition1, condition2, condition3, condition4]

    # return conditions_array

    # CREATE AN ARRAY OF PREVIOUS SCORES


    $rounds = Rounds.new([Score.new("Ben Allan", 72,course1,condition1), Score.new("Ben Allan", 80,course4,condition2)])

    # return rounds
    
end

