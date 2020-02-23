# Its the representation state of the game
# using as a model to be called.
module Model

    # Adding directions to the snake
    module Direction
        UP = :up
        RIGHT = :right
        LEFT = :left
        DOWN = :down

    end

    
    # set the arguments needed to Coordenades
    class Coord < Struct.new(:row, :col)
    end

    # define the food in heritage of coords method
    class Food < Coord
    end

    # used to render the positions for the snake
    class Snake < Struct.new(:positions)
    end

    # define the rows and columns for the grid
    class Grid < Struct.new(:row, :col)
    end

    # define the state for the snake
    class State < Struct.new(:snake, :food, :grid, :next_direction)
    end

    # set the initial state for the snake
    def self.initial_state
        Model::State.new(
            Model::Snake.new([
                # call and set the coord fo the snake
                Model::Coord.new(1, 1),
                Model::Coord.new(0, 1),
                ]),
            # call and set the coord for the food
            Model::Food.new(4, 4),
            Model::Grid.new(9, 12),
            Direction::DOWN
        )
    end

end
