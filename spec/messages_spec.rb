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
