class Player
    attr_reader :token , :player_1, :player_2
    def initialize (token = "X")
        @token = token
    end
end