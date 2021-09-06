require './mastermind'
require './lib/secret'

class Game
  attr_reader :turn_counter, :secret, :start_time, :end_time, :game_time, :player_guess
  def initialize
    @guess_counter = 0
    @secret = secret
    @player_guess = player_guess
    @start_time = start_time
    @end_time = end_time
    @game_time = game_time
    @turn = Turn.new
  end

  def instructions
     "Instructions"
  end

  def quit
    "You have quit Mastermind"
  end

  def start_message
    p "Welcome to MASTERMIND! Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def start_game
    p start_message
    start_game_input
  end

  def start_game_input
    player_input = gets.chomp.downcase
    if player_input == "p"
      play_game
    elsif player_input == "i"
      p instructions
      start_game_input
    elsif player_input == "q"
      p quit
      exit
    elsif player_input == "c"
      p cheat
      start_game_input
    end

  end

  def set_start_time
    @start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  end

  def set_end_time
    @end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  end

  def calculate_game_time
    #game_time = distance_of_time_in_words(set_start_time, set_end_time)
    @game_time = (set_end_time - set_start_time).round(2)
  end

  def play_game
    set_secret_code
    set_start_time

    p  "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?"
    @player_guess = gets.chomp.downcase!
  end

  def set_secret_code
    @secret = Secret.new
    secret.generate_secret_code
  end

  def cheat
    @secret.secret_code
  end

  def guess
    @player_guess = gets.chomp.downcase
    add_guess
  end

  def add_guess
    @guess_counter += 1
  end

  def end_game
    set_end_time
    if @guess == @secret_code
      p end_game_message
    end
  end

  def end_game_message
    p "Congratulations! You guessed the sequence '#{set_secret_code}' in #{turn_counter} guesses over #{calculate_game_time}. Do you want to (p)lay again or (q)uit?"
    start_game
  end
end
