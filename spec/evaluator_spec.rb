require 'RSpec'
require './lib/evaluator.rb'
require './lib/game.rb'

RSpec.describe Evaluator do
  it "is an instance of guess" do
    evaluator = Evaluator.new
    expect(evaluator).to be_an_instance_of(Evaluator)
  end

it "can compare two arrays" do


end
