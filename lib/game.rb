require './runner/mastermind'
require './lib/secret'
require './lib/turn'

class Game
  attr_reader :i, :q, :c, :turn_counter, :secret
  def initialize
    @player_guess = player_guess
    @turn_counter = 0
    @secret = secret
  end

  def instructions
    "Instructions"
  end

  def quit
    "You have quit Mastermind"
  end


  def start_game
    user_input = gets.chomp
    if user_input == "p"
      play_game
    elsif user_input == "i"
      p instructions
      start_game
    elsif user_input == "q"
      p quit
      exit
    elsif user_input == "c"
      p cheat
    end
  end

  def play_game
    set_secret_code
    turn = Turn.new
    p  "I have generated a beginner sequence with four elements made up of: (r)ed,
          (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?"
  end

  def set_secret_code
    @secret = Secret.new
    secret.generate_secret_code
  end

  def cheat
    @secret.secret_code
  end

  def guesses(guess)
    guess.each do |guess|
      @turn_counter += 1
    end
  end

  def end_game
    if @guess == @secret_code
      p end_game_message
    end
  end

  def end_game_message
    p "Congratulations! You guessed the sequence '#{set_secret_code}' in #{guesses} guesses over #{minutes} minutes,
      #{seconds} seconds. Do you want to (p)lay again or (q)uit?"
  end
end
