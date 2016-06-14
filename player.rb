class Player

  attr_accessor :symbol, :rules, :board, :game

  @@stats = {wins: 0, losses: 0, ties: 0}

def self.stats
  @@stats
end

def initialize(game)
  @game = game  
  @board = @game.board
  @rules = @game.rules
  pick_a_symbol
end

def pick_a_symbol
  until @symbol == "X" || @symbol == "O"
    puts "pick a symbol"
    @symbol = gets.chomp
  end
end

def turn 
  puts "YOUR TURN"
  move = 40
  until @rules.valid_move?(move, @board)
    puts "choose a number 1-9"
    move = gets.chomp.to_i
  end
  @board.comp[move - 1] = @symbol
  @board.display
end


end 