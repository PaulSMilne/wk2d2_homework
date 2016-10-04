require 'minitest/autorun'
require 'minitest/rg'
require_relative '../game'
require_relative '../board'
require_relative '../player'

class TestGame < MiniTest::Test
    def setup
        positions = {
            2   =>  4,
            7   => -7
        }
        board = Board.new(9, positions)

        @player1 = Player.new("Keith")
        @player2 = Player.new("Zsolt")

        @players = [@player1, @player2]
        
        @game = Game.new(@players, board)
    end

    def test_game_starts_with_2_players
        assert_equal(2, @game.number_of_players)
    end

    def test_game_current_player_starts_as_player_1
        assert_equal(@player1, @game.current_player)
    end

    def test_can_update_current_player
        @game.update_current_player
        assert_equal(@player2, @game.current_player)
    end

end

