require './lib/game'
require './lib/secret'
require './lib/turn'

class MASTERMIND
  def initialize
    @game = Game.new
  end
  start_game
end
