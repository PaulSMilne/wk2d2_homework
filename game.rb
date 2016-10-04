class Game

    attr_reader :current_player

    def initialize(players, board)
        @players        = players
        @board          = board
        @current_player = players[0]
    end

    def number_of_players
        @players.length
    end

    def update_current_player()
        @current_player = @players.rotate![0]
    end

end