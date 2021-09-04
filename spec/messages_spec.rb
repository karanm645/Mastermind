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

  it "allows the player to quit"
   messages = Messages.new
   quit_message = ''
   expect(quit_message) = ''
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

  it "informs users of the game flow" do
    messages = Messages.new
    game_flow_message = ''
    expect(game_flow_message).to eq('')
  end
