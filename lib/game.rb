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
      play

    else
      @messages.welcome_not_valid
      gets
      @messages.welcome_message
      user_input = gets.chomp.downcase.strip.delete(" ")
      menu_loop(user_input)
    end
  end

# change to guess
def play
  @messages.game_flow_message
  @guess = gets.chomp.downcase.strip

  if @guess == "q" || @guess == "quit"
    @messages.quit_message

  elsif @guess == @color_code.to_s
  win

  elsif @guess.length == 4
    position_comparison = @color_code.zip(@guess.chars).count {|a,b| a == b}
    color_comparison = @guess.chars & @color_code
    print " #{@guess} has #{color_comparison.count} of the correct elements with #{position_comparison} in the correct positions."
    play

      #press any key to guess again(send back to game flow loop)
  elsif @guess == "c" || @guess == "cheat"
    @messages.cheat_message #cheat message will say "there's the answer, press enter to guess again"
    puts @color_code.join
    play
    #returns to game_flow_loop

  elsif @guess.length > 4
    @messages.guess_too_long
    play #message will include press enter to return to game"
    #returns to game_flow_loop

  elsif @guess.length < 4
    @messages.guess_too_short
     #message will include press enter to return to game"
    #returns to game_flow_loop
    play
    end
  end

  # def evaluate_guess
  #   @evaluator.color_comparison
  #   @evaluator.position_comparison
  #   puts " #{@guess.join} has #{color_comparison.count} of the correct elements with () in the correct positions."
  #   play
  # end

  def win
    puts "You have beat the Mastermind!!"
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
