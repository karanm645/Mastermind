require './lib/game'
require './lib/messages'

RSpec.describe Game do
  it "exists" do
  game = Game.new

  expect(game).to be_an_instance_of(Game)
end

#   it "returns instructions when i given" do
#     game = Game.new
#     messages = Messages.new
#     user_input = menu_loop("i")
#
#     expect(input1).to eq(messages.instructions_message)
#   end
#
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
