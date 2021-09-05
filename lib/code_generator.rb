class CodeGenerator
  attr_reader :colors
  def initialize
    @colors = ['b','g','r','y']
  end

  def generate_secret
   4.times.map do |color|
     @colors.sample
   end
  end
end

 #iterating 4 times thru the string array, using sample method to pull different elements out
 #every time, joining them together as string enclosed in ''
