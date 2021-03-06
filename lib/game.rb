require './lib/secret'
require './lib/turn'

class Game
  attr_reader :guess_counter, :start_time, :secret
  def initialize
    @guess_counter = 0
    @start_time = Time.now
    @secret = Secret.new
  end

  def instructions
     "Instructions: I have generated a beginner sequence with four elements
     made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. The sequence can be
     generated in any order and in any position. The same element can also
     be used more than once. Make your guess, and I will respond with how
     many elements you guessed correctly and the correct number of element
     positions you guessed correctly.  This information can then be used
     for you to formulate a new guess. I will keep track of the number of
     guesses and the time it takes you to guess correctly. Use (c)heat to
     receive the generated sequence or (q)uit at any time to end the game.
     Good luck!"
  end

  def quit
    "You have quit Mastermind"
  end

  def start_message
    p "Welcome to MASTERMIND! Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def start_game
    start_message
    start_game_input
  end

  def start_game_input
    player_input = gets.chomp.downcase
    if player_input == "p"
      set_secret_code
      play_game
    elsif player_input == "i"
      p instructions
      start_game_input
    elsif player_input == "q"
      p quit
      exit
    end
  end

  def set_secret_code
    @secret.generate_secret_code
  end

  def calculate_game_time
    end_time = Time.now
    game_time = (end_time - @start_time ).to_i
    minutes = (game_time / 60).to_i
    seconds = game_time - minutes * 60
    "#{minutes} minutes and #{seconds} seconds."
  end

  def cheat
    @secret.secret_code
  end

  def play_game
    p "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow.
    Use (q)uit at any time to end the game. Press return to enter your guess then press return to play"
    player_input = gets.chomp.downcase
    if player_input == "q"
      p quit
      exit
    elsif player_input == "i"
      p instructions
      play_game
    elsif player_input == "c"
      p cheat
    else
      evaluate_player_guess
    end
  end

  def evaluate_player_guess
    @guess = gets.chomp.downcase
    turn = Turn.new(@secret.secret_code, @guess)
    turn.guess_to_array
    turn.guess_validation
    turn.evaluate_index
    turn.evaluate_element
    add_guess
    turn.total_output_to_player(self)
    play_game
  end

  def add_guess
    @guess_counter += 1
  end

  def end_game
    if @guess == @secret_code
      p end_game_message
    end
  end

  def end_game_message
    p "Congratulations! You guessed the sequence '#{set_secret_code}' in #{@guess_counter} guesses over #{calculate_game_time}. Do you want to (p)lay again or (q)uit?"
    start_game
  end
end
