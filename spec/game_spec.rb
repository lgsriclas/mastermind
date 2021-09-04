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

  
end
