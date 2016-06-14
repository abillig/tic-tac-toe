class Computer
  attr_accessor :symbol, :board, :rules, :game

def initialize(game)
  @game = game 
  @board = @game.board
  @rules = @game.rules
end

def turn 
  puts "COMPUTER'S TURN"
  move = 40
  until @rules.valid_move?(move, @board)
    move = rand(0..8)
  end
    @board.comp[move - 1] = @symbol
    @board.display
end   

end 