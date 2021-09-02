require 'rspec'
require './lib/turn'
require './lib/secret'

RSpec.describe Turn do

  it 'returns correct position' do
    turn = Turn.new
    a = turn.evaluate_method(["R", "G", "G", "B"], ["Y", "R", "B", "G"])
    expect(a).to be_a(Integer)
  end


end
