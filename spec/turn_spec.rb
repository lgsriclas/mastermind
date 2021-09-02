require 'rspec'
require './lib/turn'
require './lib/secret'

RSpec.describe Turn do

  it 'returns correct position' do
    turn = Turn.new
    a = turn.evaluate_index(["r", "g", "g", "b"], ["y", "r", "b", "g"])
    expect(a).to be_a(Integer)
  end


end
