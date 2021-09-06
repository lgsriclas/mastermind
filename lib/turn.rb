require './lib/game'
require './lib/secret'

class Turn

  def initialize

  end

  def guess_to_array(guess)
    guess.downcase.split("")
  end

  def guess_validation(guess)
    if guess_to_array(guess).length < 4
      "Guess is too short, try again!"
    elsif guess_to_array(guess).length > 4
      "Guess is too long, try again!"
    elsif guess.match?(/[^"r", "g", "b", "y"]/)
      "Your input had invalid characters."
    else
      # whatever method comes next!!!
    end
  end

  def evaluate_index(secret_code, guess)
    correct_index_counter = 0
    secret_code.each_with_index do |letter, i|
      if guess[i] == letter
        correct_index_counter += 1
      end
    end
    correct_index_counter
  end


  def evaluate_element(secret_code, guess)
    second_array = guess_to_array(guess)
    evaluate = secret_code.&(second_array)
    evaluate.count
    correct_element_counter = evaluate.count
    end


  def total_output_to_player
    x = evaluate_index(secret_code, guess)
    y = evaluate_element(secret_code, guess)
        require "pry"; binding.pry
    p "#{guess} has #{y} of the correct elements
    with #{x} in the correct positions.
    You have taken #{@guess_counter} guesses."
  end
end
