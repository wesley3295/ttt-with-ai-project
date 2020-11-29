module Players
class Human < Player
    def move(board)
        puts "hello player"
        gets.strip
    end
end
end