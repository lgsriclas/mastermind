class Turn

  def initialize
  end

  def guess_to_array(guess) #call in the initialize method
    guess.split   #.downcase #.to_a
  end

#secret code = rggb  guess = yrbg
#element loop and index loop
  def evaluate_index(secret_code, guess)
    #compare index postions
    array.each_with_index {|val, index|}
    #does this evaluate both at the same time?

    guess1 = guess_to_array(guess)
    2 #returns an integer


  end

  def evaluate_element(secret_code, guess)
    #evaluates elements
  end

  def evaluate_method
    #call previous methods and return amount correct for both

  end

end
