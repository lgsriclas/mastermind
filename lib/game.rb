class Game

  def start
    if p
      p  "I have generated a beginner sequence with four elements made up of: (r)ed,
            (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?"
      play_game
    elsif i
      p "Instructions"
    elsif q
      p "You don't like our game???"
    end
  end

  def play_game
    
  end

end
