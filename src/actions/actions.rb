module  Actions
    def self.move_snake(state)
        next_direction = state.next_direction
        next_position = calc_next_position(state)
        # verificar que la siguiente casilla sea valida
        if position_is_valid(state, next_position)
            move_snake _to(next_position)

        else
            end_game(state)
        end
        # si no es valida - > termina juego
        # si es valida se mueve la serpiente
    end

    private

    def calc_next_position(state)
        curr_position = state.snake.positions.first
        case state.next_direction
        when UP 
            # decrementar fila
            return = Model::Coord.new(
                curr_position.row -1,
                curr_position.col)
        when RIGHT
            # incrementar la col
            return = Model::Coord.new(
                curr_position.row,
                curr_position.col +1)
        when LEFT
            # decrementar la col
            return = Model::Coord.new(
                curr_position.row,
                curr_position.col -1)
        when DOWN
            # ingrementar la fila
            return = Model::Coord.new(
                curr_position.row +1,
                curr_position.col)
        end
            
    end

    def position_is_valid(state, next_position)
    end
    
end



