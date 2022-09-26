require './lib/dictionary'

RSpec.describe Dictionary do
  before(:each) do
    @dictionary = Dictionary.new
    end
   it 'exists' do
    expect(@dictionary).to be_an_instance_of(Dictionary)
    end

     it 'has a method that can translate to braille' do
     expect(@dictionary.translator('b')).to eq("0.0...")
     expect(@dictionary.translator('c')).to eq("00....")
     # require "pry";binding.pry
   end
   it 'can translate an english word to braille' do
     expect(@dictionary.translator("hello world")).to eq(
       "0.00..0..0..0.0.0.0.0.0.0..00........000.00..00.0.000.0.0.0.00.0..")
     end

   describe "#stack_braille" do
    it "will return the braille letter in 2 by 3 stack" do
     expect(@dictionary.stack_braille("hello world")).to eq(
       "0.0.0.0.0....00.0.0.00
        00.00.0..0..00.0000..0
        ....0.0.0....00.0.0...")
      end
  end



end
