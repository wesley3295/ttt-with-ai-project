class Board
    attr_accessor :cells, :display, :board

    def initialize 
        reset!
    end

    def display
        puts  " #{@cells[0]} "+"|"+" #{@cells[1]} "+"|"+" #{@cells[2]} "
        puts  "-----------"
        puts " #{@cells[3]} "+"|"+" #{@cells[4]} "+"|"+" #{@cells[5]} "
        puts "-----------"
        puts  " #{@cells[6]} "+"|"+" #{@cells[7]} "+"|"+" #{@cells[8]} "
    end

    def position(input)
         input = input.to_i - 1
         @cells[input]
    end

    def full?
        @cells.all?{|a| a != " " }
    end

    def turn_count
         @cells.count{|a| a != " " }
    end

    def taken?(input)
         # @cells[index] != ""
        position(input) == "X" || position(input) == "O"
    end

    def valid_move?(input)
        #if value.between?(lower, higher)
        input.to_i.between?(1, 9) && !taken?(input)
    end
    
    def update(input, player)
        @cells[input.to_i-1] = player.token
    end
    
    def reset!
            @cells = [" "," "," "," "," "," "," "," "," "]
    end
    

end