require './lib/game'

p "Welcome to MASTERMIND! Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
gets.chomp
game.start

game = Game.new
game.start()
