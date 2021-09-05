require 'rspec'
require './runner/mastermind'
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

  it 'has a start' do
    game = Game.new
    expect(game.start_game).to be(user_input)

  it 'sets a secret code' do
    game = Game.new
    expect(game.set_secret_code).to be_a(Array)
  end

  it 'can cheat' do
    game = Game.new
    expect(game.cheat).to eq(@secret)
  end

  it 'has an end' do
    game = Game.new
    expect(game.end_game).to eq(end_game_message)
  end
end
