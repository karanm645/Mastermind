class Game
  def initialize
    @messages = Messages.new
    @color_code = CodeGenerator.new
  end

  def start_menu
    puts @messages.welcome_message
    @color_code = CodeGenerator.new.generate_secret
    user_input = gets.chomp.downcase.strip.delete(" ")
    menu_loop(user_input)
  end

  def instructions
    puts @messages.instructions_message
    gets
    puts @messages.welcome_message
    user_input = gets.chomp.downcase.strip.delete(" ")
    menu_loop(user_input)
  end

  def quit
    puts @messages.quit_message
    exit
  end

  def welcome_not_valid
    puts @messages.welcome_not_valid
    gets
    puts @messages.welcome_message
    user_input = gets.chomp.downcase.strip.delete(" ")
    menu_loop(user_input)
  end

  def guess_comparison
    position_comparison = @color_code.zip(@guess.chars).count {|a,b| a == b}
    color_comparison = @guess.chars & @color_code
    print " #{@guess} has #{color_comparison.count} of the correct elements with #{position_comparison} in the correct positions."
    @guess_counter += 1
    play
  end

  def cheat
    puts @messages.cheat_message
    puts @color_code.join
    play
  end

  def menu_loop(user_input)
    if user_input == "i" || user_input == "instructions"
      instructions
      elsif user_input == "q" || user_input == "quit"
      quit
      elsif user_input == "p" || user_input == "play"
      tracker
      else welcome_not_valid
      menu_loop(user_input)
    end
  end

  def tracker
    puts @messages.tracker_message
    gets
    @start_time = Time.now
    @guess_counter = 0
    play
  end

  def play
    puts @messages.game_flow_message
    @guess = gets.chomp.downcase.strip
    if @guess == "q" || @guess == "quit"
        quit
      elsif @guess == @color_code.join
        @guess_counter += 1
      win
      #this could be made into a comparison class
      elsif @guess.length == 4
        guess_comparison
      elsif @guess == "c" || @guess == "cheat"
        cheat
      elsif @guess.length > 4
        puts @messages.guess_too_long
        play
      elsif @guess.length < 4
        puts @messages.guess_too_short
        play
    end
  end

  def win
    puts @messages.win_message
    duration = Time.now - @start_time
    seconds = duration % 60
    minutes = (duration / 60) % 60
    puts "You guessed the sequence '#{@color_code.join}' in #{@guess_counter} guesses over #{minutes.round} minutes, #{seconds.round} seconds."
    puts @messages.play_again
    user_input = gets.chomp.downcase.strip.delete(" ")
    if user_input == "q" || user_input == "quit"
      puts @messages.quit_message
      elsif user_input == "p" || user_input == "play"
        start_menu
    end
  end
end
