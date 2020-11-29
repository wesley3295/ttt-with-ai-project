module Players
class Computer < Player
attr_accessor :board, :human, :turn

def move(board)
    valid_moves = ["1", "2", "3", "4", "5", "6", "7", "8", "9"].to_a.sample
    !board.taken?(valid_moves)
    move = valid_moves
end

# def remove_placement
#     # if player_1 input is equal to number in valid moves remove number from valid moves.
# end


    
end

end
