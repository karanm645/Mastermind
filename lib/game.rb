class Game
  def initialize
    @messages = Messages.new
    @color_code = CodeGenerator.new
    # @evaluator = Evaluator.new
  end

  def start_menu
    puts @messages.welcome_message
    @color_code = CodeGenerator.new.generate_secret
    user_input = gets.chomp.downcase.strip.delete(" ")
    menu_loop(user_input)
  end

  def menu_loop(user_input)
    if user_input == "i" || user_input == "instructions"
      # 17, 18 19 (method)
      puts @messages.instructions_message
      gets
      puts @messages.welcome_message
      # method (allow game to recieve stub it in)
      user_input = gets.chomp.downcase.strip.delete(" ")
      menu_loop(user_input)

    elsif user_input == "q" || user_input == "quit"
       puts @messages.quit_message

    elsif user_input == "p" || user_input == "play"
      tracker

    else
      puts @messages.welcome_not_valid
      gets
      puts @messages.welcome_message
      user_input = gets.chomp.downcase.strip.delete(" ")
      menu_loop(user_input)
    end
  end

def tracker
  puts "Press enter to begin the game and start the clock!"
  gets
  @start_time = Time.now
  @guess_counter = 0
    play
end

def play

  puts @messages.game_flow_message
  @guess = gets.chomp.downcase.strip

  if @guess == "q" || @guess == "quit"
    puts @messages.quit_message

  elsif @guess == @color_code.join
    @guess_counter += 1
  win

  elsif @guess.length == 4
    position_comparison = @color_code.zip(@guess.chars).count {|a,b| a == b}
    color_comparison = @guess.chars & @color_code
    print " #{@guess} has #{color_comparison.count} of the correct elements with #{position_comparison} in the correct positions."
    @guess_counter += 1
    play


  elsif @guess == "c" || @guess == "cheat"
    puts @messages.cheat_message
    puts @color_code.join
    play


  elsif @guess.length > 4
    puts @messages.guess_too_long
    play

  elsif @guess.length < 4
    puts @messages.guess_too_short
    play

    end
  end


  def win
    puts "You have beat the Mastermind!!"
    #break into method l 89, 90, & 91 - returns time thats passed (string interp)
    duration = Time.now - @start_time
    seconds = duration % 60
    minutes = (duration / 60) % 60
    puts "Congratulations! You guessed the sequence '#{@color_code.join}' in #{@guess_counter} guesses over #{minutes.round} minutes, #{seconds.round} seconds."
    puts "Do you want to (p)lay again or (q)uit?"
    puts ">"
    user_input = gets.chomp.downcase.strip.delete(" ")
    if user_input == "q" || user_input == "quit"
      puts @messages.quit_message

    elsif user_input == "p" || user_input == "play"
        start_menu
      end
    end

  end
