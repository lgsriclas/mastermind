require 'rspec'
require './lib/secret'

RSpec.describe Secret do
  it 'can generate secret code' do
    secret = Secret.new
    expect(secret.generate_secret_code).to be_a(Array)
  end

end
