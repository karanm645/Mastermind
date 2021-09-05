require './lib/game'
require './lib/messages'

RSpec.describe Game do
  it "exists" do
  game = Game.new

  expect(game).to be_an_instance_of(Game)
  expect(game.play).to eq('')
end

 #it "gives instructions when given i/incstructions" do
 #end
#   it "returns instructions when instructions given" do
#     game = Game.new
#     messages = Messages.new
#     input2 = game.input("instructions")
#
#     expect(input2).to eq(messages.instructions_message)
#   end
#
#   it "returns quit message when q is given" do
#     game = Game.new
#     messages = Messages.new
#     input1 = game.input("q")
#
#     expect(input1).to eq(messages.quit_message)
#   end
#
#   it "returns quit message when quit is given" do
#     game = Game.new
#     messages = Messages.new
#     input2 = game.input("quit")
#
#     expect(input2).to eq(messages.quit_message)
#   end
end
