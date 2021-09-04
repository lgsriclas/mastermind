require 'rspec'
require './lib/turn'
require './lib/secret'

RSpec.describe Turn do

  it 'changes guess from string to array' do
    turn = Turn.new
    guess_1 = "rgbb"
    guess_2 = "RGBB"
    expect(turn.guess_to_array(guess_1)).to eq(["r", "g", "b", "b"])
    expect(turn.guess_to_array(guess_2)).to eq(["r", "g", "b", "b"])
  end

  it 'can verify guess: length too short' do
    turn = Turn.new
    guess_1 = "rgb"
    expect(turn.guess_validation(guess_1)).to eq("Guess is too short, try again!")
  end

  it 'can verify guess: length too long' do
    turn = Turn.new
    guess_1 = "rgbbrg"
    expect(turn.guess_validation(guess_1)).to eq("Guess is too long, try again!")
  end

  it 'can verify guess: invalid characters' do
    turn = Turn.new
    guess_1 = "rgvo"
    expect(turn.guess_validation(guess_1)).to eq("Your input had invalid characters.")
  end

  xit 'returns correct index position' do
    turn = Turn.new
    a = turn.evaluate_index(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(Integer)
  end

  xit 'returns correct index position' do
    turn = Turn.new
    a = turn.evaluate_index(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(0)
  end

  xit 'returns correct index position' do
    b = turn.evaluate_index(["r", "g", "g", "b"], ["r", "r", "b", "b"])
    expect(b).to be_a(2)
  end

  xit 'returns correct element number' do
    turn = Turn.new
    a = turn.evaluate_method(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(3)

    b = turn.evaluate_method(["r", "g", "g", "b"], ["r", "r", "b", "b"])
    expect(b).to be_a(2)
  end

end
