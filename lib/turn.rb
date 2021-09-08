require './lib/game'
require './lib/secret'

class Turn
  attr_reader :secret_code, :guess
  def initialize(secret_code, guess)
    @secret_code = secret_code
    @guess = guess
  end

  def guess_to_array
    @guess.downcase.split("")
  end

  def guess_validation
    if @guess.downcase.split("").length< 4
      p "Guess is too short, try again!"
    elsif guess_to_array.length > 4
      p "Guess is too long, try again!"
    elsif @guess.match?(/[^"r", "g", "b", "y"]/)
      p "Your input had invalid characters."
    else
      evaluate_index
    end
  end

  def evaluate_index
    correct_index_counter = 0
    @secret_code.each_with_index do |letter, i|
      if guess_to_array[i] == letter
        correct_index_counter += 1
      end
    end
    correct_index_counter
  end


  def evaluate_element
    second_array = guess_to_array
    evaluate = @secret_code.&(second_array)
    evaluate.count
    correct_element_counter = evaluate.count
    end


  def total_output_to_player
    game = Game.new
    x = evaluate_index
    y = evaluate_element
    p "#{@guess} has #{y} of the correct elements with #{x} in the correct positions. You have taken #{@guess_counter} guesses."
  end
end
