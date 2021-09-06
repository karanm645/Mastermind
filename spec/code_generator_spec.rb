require 'RSpec'
require './lib/code_generator'


RSpec.describe CodeGenerator do
  it "exists" do
    color_code = CodeGenerator.new
    expect(color_code).to be_an_instance_of(CodeGenerator)
  end

 it "contains four colors in an array" do
   @colors = ['b','g','r','y']
   expect(@colors).to be_an(Array)
   expect(color_code.generate_secret.length).to eq(4)
   expect(color_code.generate_secret.length).to_not eq(5)
 end


 it "contains a method that randomizes the existing colors" do
   color_code = CodeGenerator.new
   expect(color_code).to be_an_instance_of(CodeGenerator)
   expect(color_code.colors).to be_an(Array)
   expect(color_code.generate_secret.length).to eq(4)
   expect(color_code.generate_secret.length).to_not eq(5)
   expect(color_code.generate_secret).to_not include('s')
   expect(color_code.generate_secret).to_not include('e')
   expect(color_code.generate_secret).to_not include('q')
   expect(color_code.generate_secret).to_not include('p')
   #could test against things that shouldn't exist
end

end
