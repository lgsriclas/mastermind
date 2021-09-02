require 'rspec'
require './lib/turn'
require './lib/secret'

RSpec.describe Turn do

  it 'returns correct position' do
    turn = Turn.new
    a = turn.evaluate_index(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(Integer)
  end

  it 'returns correct index position' do
    turn = Turn.new
    a = turn.evaluate_index(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(0)

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
