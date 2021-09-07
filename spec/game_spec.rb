require './lib/game'
require './lib/messages'
require './lib/evaluator'
require './lib/code_generator'

RSpec.describe Game do
  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  it ""

  it "displays messages after player has input something" do
    @messages = Messages.new
    expect(@messages).to be_an_instance_of(Messages)


end



end







# expect(game.play).to include('Lets start!') ---- need help from instructors
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
