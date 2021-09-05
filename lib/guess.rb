class Guess
def initialize
@Game
@CodeGenerator
@color_code
@Guess


def evaluate_guess_position
  position_comparison = @color_code.zip(guess.chars).count {|a,b| a == b}
  puts position_comparison
  end
end

def evaluate_guess_characters
  color_comparison = @guess & @color_code
puts color_comparison.count
#string interpolation in the larger file

end
