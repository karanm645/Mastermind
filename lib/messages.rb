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

  def instructions_message
    puts "To play MASTERMIND, guess a
    combination of these 4 colors:
    (r)ed, (g)reen, (y)ellow, (b)lue.
    enter (h)ome to return to welcome screen."
  end

  def quit_message
    puts 'You have quit.'
  end

  def game_flow_message
    puts "I have generated a secret color code consiting four colors:
    (r)ed, (g)reen, (b)lue and (y)ellow. Can you guess it?
    Enter your guess below!
    >"
  end

  def guess_too_long
      puts "Sorry, that guess was too long.
            Please enter FOUR characters.
            Try again!"
  end

  def guess_too_short
      puts "Sorry, that guess was too short.
            Please enter FOUR characters.
            Try again!"
  end

  def win_message
      puts 'Congrats! Looks like you won. Would you like to (p)lay again
      or (q)uit?'
  end


    # def time_message
    #   if time something
    #     string interp message
    #   end
    # end

    # def guess_count_message
    #   if guess is something
    #     string interp message
    #   end
    # end

  def endgame_message
  puts  "Thanks for playing MASTERMIND!!!"
  end

  end
