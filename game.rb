class Game
  attr_accessor :board, :player_1, :player_2, :rules

def initialize
  @board = Board.new
  @rules = Rules.new
  @player_1 = Player.new(self)
  @player_2 = Computer.new(self)
  @player_2.symbol = ["X", "O"].reject{|decision| decision == @player_1.symbol}[0]
end

def winner
  @rules.winner
end

def draw?(board)
  @rules.draw?(@board)
end

def update_stats(player)
  @player_1.class.stats[:wins] += 1  if @player_1.symbol == winner 
  @player_1.class.stats[:losses] += 1 if @player_2.symbol == winner
end


def game_play
    loop do 
      break if @rules.won?(@board) == true  || @rules.draw?(@board) == true
        @player_1.turn
      break if @rules.won?(@board) == true  || @rules.draw?(@board) == true
        @player_2.turn
    end
      if @rules.won?(@board) == true
        update_stats(@player_1)
      else 
        @player_1.class.stats[:ties] += 1 
        puts "IT'S OVER AND NOBODY WON"
      end
end

def more_games
  answer = "-40"
    until answer == "yes" || answer == "no"
      puts "another game??? yes or no"
      answer = gets.chomp
    end
  answer == "yes" ? true : false 
end

end 



