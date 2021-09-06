require 'rspec'
require './mastermind'
require './lib/game'
require './lib/secret'

RSpec.describe Game do
  it 'exists' do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  it 'has instructions' do
    game = Game.new
    expect(game.instructions).to eq("Instructions")
  end

  it 'has a quit' do
    game = Game.new
    expect(game.quit).to eq("You have quit Mastermind")
  end

  xit 'has a game start' do
    game = Game.new
    expect(game.start_game).to eq(player_input)
  end

  xit 'has a start time' do
    game = Game.new
    game.set_start_time
    expect(game.set_start_time).to eq(@start_time)
  end

  xit 'has an end time' do
    game = Game.new
    expect(game.set_end_time).to eq(@end_time)
  end

  xit 'can calculate the length of a game' do
    game = Game.new
    expect(game.calculate_game_time).to eq(@game_time)
  end

  xit 'sets a secret code' do
    game = Game.new
    expect(game.set_secret_code).to eq(@secret_code)
  end

  xit 'can cheat' do
    game = Game.new
    expect(game.cheat).to eq(@secret_code)
  end

  it 'counts the number of guesses' do
    game = Game.new
    expect(game.guess).to eq(1)
  end

  xit 'has an end' do
    game = Game.new
    expect(game.end_game).to eq(game.end_game_message)
  end
end
