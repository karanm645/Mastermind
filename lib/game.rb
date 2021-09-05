require './lib/messages'

class Game
  def initialize
    @messages = Messages.new
    # @generate_secret = Code_Generator.new
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


def play

    if arg.length == 4
      @messages.gameflow_message
      return evaluate_guess # we will need to define this method, will be an enumerable, print the results
      #press any key to guess again(send back to game flow loop)

    elsif arg == "q" || arg == "quit"
    @messages.quit_message
    exit
      menu_loop(user_input)

    elsif arg == "c" || arg == "cheat"
      @color_code.to_s #color_code is an array
      @messages.cheat_message #cheat message will say "there's the answer, press enter to guess again"
      gets
      #returns to game_flow_loop

    elsif arg.length > 4
      @messages.too_long
      gets #message will include press enter to return to game"
      #returns to game_flow_loop

    elsif arg.length < 4
      @messages.too_short
      gets #message will include press enter to return to game"
      #returns to game_flow_loop


      menu_loop(user_input)
    end
  end

  def evaulate_guess
    #array comparison
    #each enumerable index
    #colors correct finds intersection of two arrays?
    #only saves things it finds in both

  end


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
