require 'rspec'
require './mastermind'
require './lib/game'

RSpec.describe Game do
  it 'exists' do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  it 'has instructions' do
    game = Game.new
    expect(game.instructions).to be_a(String)
  end

  it 'has a quit' do
    game = Game.new
    expect(game.quit).to eq("You have quit Mastermind")
  end

  it 'can calculate the length of a game' do
    game = Game.new
    game.calculate_game_time
    expect(game.calculate_game_time).to be_a(String)
  end

  it 'sets a secret code' do
    game = Game.new
    game.set_secret_code
    expect(game.set_secret_code).to be_a(Array)
    expect(game.set_secret_code.length).to be(4)
  end

  it 'can cheat' do
    game = Game.new
    game.set_secret_code
    expect(game.cheat).to be_a(Array)
    expect(game.cheat.length).to be(4)
  end

  it 'counts the number of guesses' do
    game = Game.new
    game.add_guess
    expect(game.guess_counter).to eq(1)
  end

  it 'has an end' do
    game = Game.new
    expect(game.end_game).to eq(game.end_game_message)
  end
end
