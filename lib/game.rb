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
      exit
      # tell the player that character is wrong
    elsif arg == "p" || arg == "play"
      return "start"

    else
      @messages.welcome_not_valid
      gets
      @messages.welcome_message
      user_input = gets.chomp.downcase.strip.delete(" ")
      menu_loop(user_input)
    end
  end

  def play
    puts "You're playing now"
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
