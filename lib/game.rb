class Game
  def initialize
    @messages = Messages.new
    @color_code = CodeGenerator.new.generate_secret
    @evaluator = Evaluator.new
  end

  def start_menu
    @messages.welcome_message

    user_input = gets.chomp.downcase.strip.delete(" ")
    menu_loop(user_input)
  end

  def menu_loop(arg)
    if arg == "i" || arg == "instructions"
      @messages.instructions_message
      gets
      @messages.welcome_message
      user_input = gets.chomp.downcase.strip.delete(" ")
      menu_loop(user_input)

    elsif arg == "q" || arg == "quit"
       @messages.quit_message

    elsif arg == "p" || arg == "play"
      tracker

    else
      @messages.welcome_not_valid
      gets
      @messages.welcome_message
      user_input = gets.chomp.downcase.strip.delete(" ")
      menu_loop(user_input)
    end
  end

def tracker
  @start_time = Time.now
  #counter
  puts "Press enter to begin the game and start the clock!"
  if gets
    play
  end
end

def play

  @messages.game_flow_message
  @guess = gets.chomp.downcase.strip

  if @guess == "q" || @guess == "quit"
    @messages.quit_message

  elsif @guess == @color_code.join
  win

  elsif @guess.length == 4
    position_comparison = @color_code.zip(@guess.chars).count {|a,b| a == b}
    color_comparison = @guess.chars & @color_code
    print " #{@guess} has #{color_comparison.count} of the correct elements with #{position_comparison} in the correct positions."
    play


  elsif @guess == "c" || @guess == "cheat"
    @messages.cheat_message
    puts @color_code.join
    play


  elsif @guess.length > 4
    @messages.guess_too_long
    play

  elsif @guess.length < 4
    @messages.guess_too_short
    play

  elsif @guess.length == 4
    position_comparison = @color_code.zip(@guess.chars).count {|a,b| a == b}
    color_comparison = @guess.chars & @color_code
    print " #{@guess} has #{color_comparison.count} of the correct elements with #{position_comparison} in the correct positions."
    play

    end
  end


  def win
    puts "You have beat the Mastermind!!"
    duration = Time.now - @start_time
    seconds = duration % 60
    minutes = (duration / 60) % 60
    puts "Congratulations! You guessed the sequence '#{@color_code.join}' in (number of guesses) over #{minutes.round} minutes, and #{seconds.round} seconds."
  end



  #play game (guess -- evaluate -- sequence -- until game over)
  #end game message starts loop over again
  #game over method (game_over? return true if guess == @color_code)
  #end_game message (conditionals for w/l , play again (if play again or not -- if yes restart))



  # def input(arg)
  #   if arg == "p" || arg == "play"
  #     return play
  #     #take us to into game_flow loop
  #   end
  #
  # # def input(wrong)
  # #   else
  # #     return @messages.welcome_not_valid
  # #     gets.chomp.downcase
  # #     if arg == "h" || arg == "home"
  # #       input
  # #     end
  #
  # # end
  # end

  # below (put in module to use all the time)
  # def get_input
  #   player_input = gets.chomp.downcase.strip.delete(' ')
  #   quit(player_input)
  #   player_input
  # end
end
