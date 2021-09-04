require 'rspec'
require './lib/game'

RSpec.describe Game do
  it 'exists' do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  it 'has a start' do
    game = Game.new
    expect(game.start).to eq()
  end

  it 'can cheat' do
    game = Game.new
    expect(game.cheat).to eq(@secret_code)
  end

  it 'has an end' do
    game = Game.new
    expect(game.end_game).to eq(end_game_message)
  end
end
