class Game
  def initialize
    @messages = Messages.new
    @color_code = CodeGenerator.new
    @evaluator = Evaluator.new
  end

  def start_menu
    @messages.welcome_message
    @color_code = CodeGenerator.new.generate_secret
    user_input = gets.chomp.downcase.strip.delete(" ")
    menu_loop(user_input)
  end

  def menu_loop(user_input)
    if user_input == "i" || user_input == "instructions"
      @messages.instructions_message
      gets
      @messages.welcome_message
      user_input = gets.chomp.downcase.strip.delete(" ")
      menu_loop(user_input)

    elsif user_input == "q" || user_input == "quit"
       @messages.quit_message

    elsif user_input == "p" || user_input == "play"
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
  @guess_counter = 0
  puts "Press enter to begin the game and start the clock!"
  gets
    play
end

def play

  @messages.game_flow_message
  @guess = gets.chomp.downcase.strip

  if @guess == "q" || @guess == "quit"
    @messages.quit_message

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
    @messages.cheat_message
    puts @color_code.join
    play


  elsif @guess.length > 4
    @messages.guess_too_long
    play

  elsif @guess.length < 4
    @messages.guess_too_short
    play

    end
  end


  def win
    puts "You have beat the Mastermind!!"
    duration = Time.now - @start_time
    seconds = duration % 60
    minutes = (duration / 60) % 60
    puts "Congratulations! You guessed the sequence '#{@color_code.join}' in #{@guess_counter} guesses over #{minutes.round} minutes, #{seconds.round} seconds."
    puts "Do you want to (p)lay again or (q)uit?"
    puts ">"
    user_input = gets.chomp.downcase.strip.delete(" ")
    if user_input == "q" || user_input == "quit"
      @messages.quit_message

    elsif user_input == "p" || user_input == "play"
        start_menu
      end
    end

  end
