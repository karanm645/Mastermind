require 'RSpec'
require './lib/guess.rb'
require './lib/game.rb'

RSpec.describe Guess do
  it "is an instance of guess" do
    guess = Guess.new
    expect(guess).to be_an_instance_of(Guess)
  end

it "can compare two arrays" do
  

end
