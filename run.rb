require 'pry'

require_relative 'environment.rb'

loop do 
game = Game.new
puts game.player_1.class.stats
game.game_play
break if game.more_games == false
end