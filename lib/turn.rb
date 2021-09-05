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

  # def evaluate_index(secret_code, guess)
  #   secret_code.zip(guess).map do { |1,2| 1 = 2}
  #
array1.zip(array2).map { |1,2| 1 = 2}
end
  # end

  # def evaluate_element(secret_code, guess)
  #   second_array = guess_to_array(guess)
  #   correct_elements = secret_code.difference(guess).length
  #   4 - correct_elements
  #
  # end


  def evaluate_element(secret_code, guess)
    second_array = guess_to_array(guess)
    evaluate = secret_code.&(second_array)
    evaluate.count
  end


# secret_code = ["r", "r", "b", "y"]
# guess_to_array(guess) = ["r", "b", "b", "y"]
# secret_code - guess_to_array(guess)
# ["r"].count => 1
# 4 - 1



#   def evaluate_method
#     #call previous methods and return amount correct for both
#
#   end

end
