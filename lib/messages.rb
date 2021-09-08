class Messages

  def welcome_message
   "Welcome to MASTERMIND
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >"
  end

  def welcome_not_valid
   "That input is not valid.
    Press enter to return to the welcome screen."
  end

  def instructions_message
   "To play MASTERMIND, guess a
    combination of these 4 colors:
    (r)ed, (g)reen, (y)ellow, (b)lue.
    Press enter to return to welcome screen."
  end

  def tracker_message
    "Press enter to begin the game and start the clock!"
  end

  def quit_message
   "Nobody can beat the MASTERMIND! HA! HA!"
  end

  def tracker_message
    "Press enter to begin the game and start the clock!"
  end

  def game_flow_message
    "I have generated a secret color code consiting four colors:
    (r)ed, (g)reen, (b)lue and (y)ellow. Can you guess it?
    Press (c)heat to see the code, and (q)uit to quit.
    Enter your guess below!
    >"
  end

  def cheat_message
   "The secret code is:"
  end

  def guess_too_long
    "Sorry, that guess was too long.
    Please enter FOUR characters.
    Try again!"
  end

  def guess_too_short
    "Sorry, that guess was too short.
     Please enter FOUR characters.
     Try again!"
  end

  def win_message
    'Congrats! You have bested the MASTERMIND.'
  end

  def play_again
    "Would you like to (p)lay again or (q)uit?
    >"
  end

  end
