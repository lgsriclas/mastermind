require 'rspec'
require './lib/turn'
require './lib/secret'
require './lib/game'

RSpec.describe Turn do

  it 'changes guess from string to array' do
    turn = Turn.new("rgby", "rgbb")
    turn.guess_to_array
    #guess_1 = "rgbb"
    #guess_1 = turn.guess
    # guess_2 = "RGBB"
    expect(turn.guess_to_array).to eq(["r", "g", "b", "b"])
    # expect(turn.guess_to_array(guess_2)).to eq(["r", "g", "b", "b"])
  end

  it 'can verify guess: length too short' do
    turn = Turn.new("rgby", "rgb")
    #guess_1 = "rgb"
    expect(turn.guess_validation).to eq("Guess is too short, try again!")
  end

  it 'can verify guess: length too long' do
    turn = Turn.new("rgby", "rgbbb")
    #guess_1 = "rgbbrg"
    expect(turn.guess_validation).to eq("Guess is too long, try again!")
  end

  it 'can verify guess: invalid characters' do
    turn = Turn.new("rgby", "ffff")
    #guess_1 = "rvgo"
    expect(turn.guess_validation).to eq("Your input had invalid characters.")
  end

  it 'evaluate index: returns correct number of index positions' do
    turn = Turn.new("rgby", "rgbb")
    #a = turn.evaluate_index(["r", "g", "b", "y"], ["r", "g", "b", "b"])
    a = turn.evaluate_index
    expect(a).to eq(3)
  end

  it 'evaluate index: returns correct number of index positions' do
    turn = Turn.new("rgby", "rgbb")
    #b = turn.evaluate_index(["r", "g", "g", "b"], ["r", "r", "b", "b"])
    b = turn.evaluate_index
    expect(b).to eq(3)
  end

  it 'evaluate element: returns correct number of elements' do
    turn = Turn.new("rgby", "rgbb")
    #a = turn.evaluate_element(["r", "g", "g", "b"], "yrbg")
    a = turn.evaluate_element
      expect(a).to eq(3)

    #b = turn.evaluate_element(["r", "g", "g", "b"], "rrbb")
    b = turn.evaluate_element
      expect(b).to eq(3)
  end

end
