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

    def validate_movement(spaces)
        distance_to_end = @board.win_tile - @current_player.position
        #movement = spaces > distance_to_end ? distance_to_end : spaces
        if (spaces > distance_to_end)
            movement = distance_to_end
        else
            movement = spaces
        end
        return movement
    end

    def next_turn(spaces)
        valid_move = validate_movement(spaces)
        @current_player.move(valid_move)
        modifier = @board.modifier_at_position(@current_player.position)
        @current_player.move(modifier)
        update_current_player
    end

end