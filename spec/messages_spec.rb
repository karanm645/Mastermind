require 'RSpec'
require './lib/messages'

RSpec.describe Messages do
  it "exists" do
    messages = Messages.new
    expect(messages).to be_an_instance_of(Messages)
  end

  it "welcomes the player" do
    messages = Messages.new
    welcome_message = ''
    expect(welcome_message).to eq('')
  end

  it "tells users their selection is invalid" do
        messages = Messages.new
        welcome_not_valid = ''
        expect(welcome_not_valid).to eq('')
  end


  it "displays instructions" do
    messages = Messages.new
    instructions_message = ''
    expect(instructions_message).to eq('')
  end

  it "allows the player to quit" do
   messages = Messages.new
   quit_message = ''
   expect(quit_message).to eq('')
  end


  it "informs users of the game flow" do
    messages = Messages.new
    game_flow_message = ''
    expect(game_flow_message).to eq('')
  end


  it "tells user guess was too long" do
    messages = Messages.new
    guess_too_long = ''
    expect(guess_too_long).to eq('')
  end

  it "tells user guess was too short" do
    messages = Messages.new
    guess_too_short = ''
    expect(guess_too_short).to eq('')
  end

  it "tells user they won" do
    messages = Messages.new
    win_message = ''
    expect(win_message).to eq('')
  end

  it 'displays endgame message' do
  messages = Messages.new
  endgame_message = ''
  expect(endgame_message).to eq('')
  end

end
