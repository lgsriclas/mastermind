require './mastermind'
require './lib/turn'

class Game
  attr_reader :i, :q, :turn_counter
  def initialize
    @i = "Instructions"
    @q = "You have quit Mastermind."
    @turn_counter = 0
  end


  def start
    gets.chomp
    begin
      
    rescue ExceptionName

    end
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
    turn = Turn.new
  end

  def cheat
    @secret_code
  end

  def end_game
  end

  def guesses
    @turn_counter += 1
  end

  def end_game_message
    p "Congratulations! You guessed the sequence 'GRRB' in #{guesses} guesses over #{minutes} minutes,
      #{seconds} seconds. Do you want to (p)lay again or (q)uit?""
  end
end
