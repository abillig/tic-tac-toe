class Rules

attr_reader :winner

  @winner = " "

WINNING_COMBS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def valid_move?(move, board)
  if board.comp[move - 1] == " " 
    return true
  elsif move < 1 || move > 9 
    return false
  end
end

def won?(board)
    WINNING_COMBS.each do |array|
      if board.comp[array[0]] == board.comp[array[1]] && board.comp[array[0]] == board.comp[array[2]] && board.comp[array[2]]!=" "
        puts "#{board.comp[array[0]]} is the winner!"
        @winner = board.comp[array[0]] 
        return true
      end
    end
end

def draw?(board)
  board.comp.include?(" ") ? false : true 
end


end
