require "minitest/autorun"
require_relative "../src/actions/actions"
require_relative "../src/model/state"

class ActionsTest < Minitest::Test
    def test_move_snake
        initial_state =  Model::State.new(
            Model::Snake.new([
                # call and set the coord fo the snake
                Model::Coord.new(1, 1),
                Model::Coord.new(0, 1),
                ]),
            # call and set the coord for the food
            Model::Food.new(4, 4),
            Model::Grid.new(9, 12),
            Model::Direction::DOWN,
            false
        )
        expected_state = Model::State.new(
            Model::Snake.new([
                # call and set the coord fo the snake
                Model::Coord.new(2, 1),
                Model::Coord.new(1, 1),
                ]),
            # call and set the coord for the food
            Model::Food.new(4, 4),
            Model::Grid.new(9, 12),
            Model::Direction::DOWN,
            false
        )

        actual_state = Actions::move_snake(initial_state)
        assert_equal actual_state, expected_state
        
    end
end