class Club
    attr_accessor :club, :power
    def initialize(club,power)
        @club = club
        @power = power
    end

    def to_s
        "#{@club}'s power is: #{@power}"
    end

end