require './lib/game'
require './lib/messages'
require './lib/code_generator'

RSpec.describe Game do
  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

#I think you can see where we were going with these tests, but since
#we used so much recursion for the loops it was impossible to get them
#to work without removing the recursive method which we discovered far too late.

  it "quits and displays a quit message" do
    game = game.new
    expect(game.quit).to return_a(String)
  end


 it "displays the cheat message" do
   game = Game.new
   expect(game.cheat).to be_a(String)
 end
 
  it "starts the timer and guess counter at zero" do
   game = Game.new
   expect(game.tracker.(@start_time)).to_eq(0)
   expect(game.tracker.(@guess_counter)).to_eq(0)
 end




end
