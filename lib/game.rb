require './mastermind'

class Game
  attr_reader :i, :q
  def initialize
    @i = "Instructions"
    @q = "You don't like our game???"
  end


  def start
    gets.chomp
    if p
      p
      play_game
    elsif i
      @i
    elsif q
      @q
    end
  end

  def p
    p  "I have generated a beginner sequence with four elements made up of: (r)ed,
          (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?"
  end

  def play_game
  end

end
