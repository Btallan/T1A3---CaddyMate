require_relative 'methods/player.rb'
require_relative './methods/course.rb'
require_relative 'methods/condition.rb'
require_relative 'methods/score.rb'
require_relative './methods/rounds.rb'


def seed
    # CREATE AN ARRAY OF PROFESSINALS

    player1 = Player.new("Adam Scott")
    player2 = Player.new("Ben Allan")

    players_array = [player1, player2]

    # return players_array    

    # CREATE AN ARRAY OF COURSES
    course1 = Course.new("Bargara Golf Course")
    course2 = Course.new("Augusta National Golf Course")
    course3 = Course.new("Cypress Point Golf Course")
    course4 = Course.new("Royal Melbourne Golf Course")
    course5 = Course.new("St Andrews Links Golf Course")
    course6 = Course.new("Kingston Heath Golf Course")

    course_array = [course1, course2, course3, course4, course5, course6]

    # return course_array

    # CREATE AN ARRAY OF WEATHER TYPES
    condition1 = Condition.new("Fine")
    condition2 = Condition.new("Windy")
    condition3 = Condition.new("Raining")
    condition4 = Condition.new("Morning Dew")

    conditions_array = [condition1, condition2, condition3, condition4]

    # return conditions_array

    # CREATE AN ARRAY OF PREVIOUS SCORES


    rounds = Rounds.new([Score.new(player2, 72,course1,condition1), Score.new(player2, 80,course4,condition2)])

    return rounds
    


end