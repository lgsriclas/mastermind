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



  it 'returns correct index position' do
    turn = Turn.new
    a = turn.evaluate_index(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(Integer)
  end

  it 'returns correct index position' do
    turn = Turn.new
    a = turn.evaluate_index(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(0)
  end

  it 'returns correct index position' do
    b = turn.evaluate_index(["r", "g", "g", "b"], ["r", "r", "b", "b"])
    expect(b).to be_a(2)
  end

  it 'returns correct element number' do
    turn = Turn.new
    a = turn.evaluate_method(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(3)

    b = turn.evaluate_method(["r", "g", "g", "b"], ["r", "r", "b", "b"])
    expect(b).to be_a(2)
  end

end
