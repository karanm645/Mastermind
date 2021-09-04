class Messages
  def initialize
  end

  def welcome_message
    puts "Welcome to MASTERMIND
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >"
  end

  def welcome_not_valid
    puts "That input is not valid.
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
