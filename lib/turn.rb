class Turn

  def initialize
  end

  def secret_code_iteration(secret_code)

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

#   def guess_iteration(guess)
#
#   end
#
# #secret code = rggb  guess = yrbg
# #element loop and index loop
  def evaluate_index(secret_code, guess)
    #compare index postions
    array.each_with_index {|val, index|}
    #does this evaluate both at the same time?



  end
#
  def evaluate_element(secret_code, guess)
    second_array = guess_to_array(guess)
    correct_elements = (secret_code - second_array).count
    4 - correct_elements

    require "pry"; binding.pry

# secret_code = ["r", "r", "b", "y"]
# guess_to_array(guess) = ["r", "b", "b", "y"]
# secret_code - guess_to_array(guess)
# ["r"].count => 1
# 4 - 1

  end

#   def evaluate_method
#     #call previous methods and return amount correct for both
#
#   end

end
