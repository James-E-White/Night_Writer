require './lib/dictionary'
require './lib/translator'
require 'simplecov'
RSpec.describe Dictionary do
  before(:each) do
    @dictionary = Dictionary.new
    end
   it 'exists' do
    expect(@dictionary).to be_an_instance_of(Dictionary)
    end

     it 'has a method that can translate to braille' do
     expect(@dictionary.translator('b')).to eq(["0.0..."])
     expect(@dictionary.translator('c')).to eq(["00...."])
     # require "pry";binding.pry
    end

   it 'can translate an english word to braille' do
     expect(@dictionary.translator("hello world")).to eq(
    ["0.00..", "0..0..", "0.0.0.", "0.0.0.", "0..00.", "......", ".000.0", "0..00.", "0.000.", "0.0.0.", "00.0.."])
     end

     describe '#stack_braille' do
    it "will return the braille letter in 2 by 3 stack" do
      expect(@dictionary.translator("hello world")).to eq(
     ["0.00..", "0..0..", "0.0.0.", "0.0.0.", "0..00.", "......", ".000.0", "0..00.", "0.000.", "0.0.0.", "00.0.."])
      end
    end
      #no wider than 40 Braille characters (80 dots) wide.
    describe '#split_lines' do
    it 'will split the lines of write braille if it exceeds 40 braille characters' do
        expected = "0.0.0.0.0....00.0.0.00..0.0.0.0.0....00.
00.00.0..0..00.0000..0..00.00.0..0..00.0
....0.0.0....00.0.0.........0.0.0....00.
0.0.00..0.0.0.0.0....00.0.0.00..0.0.0.0.
000..0..00.00.0..0..00.0000..0..00.00.0.
0.0.........0.0.0....00.0.0.........0.0.
0....00.0.0.00..0.0.0.0.0....00.0.0.00..
.0..00.0000..0..00.00.0..0..00.0000..0..
0....00.0.0.........0.0.0....00.0.0.....
0.0.0.0.0....00.0.0.00..0.0.0.0.0....00.
00.00.0..0..00.0000..0..00.00.0..0..00.0
....0.0.0....00.0.0.........0.0.0....00.
0.0.00..0.0.0.0.0....00.0.0.00..0.0.0.0.
000..0..00.00.0..0..00.0000..0..00.00.0.
0.0.........0.0.0....00.0.0.........0.0.
0....00.0.0.00
.0..00.0000..0
0....00.0.0..."
        expect(@dictionary.write_braille("hello world hello world hello world hello world hello world hello world hello world hello world hello world")).to eq(expected)
        end
 end

      it 'can convert braille to english' do
      expect(@dictionary.deconstructor"0.0...").to eq('b')

     end
 end

#         expect(@dictionary.deconstructor("0.0.0.0.0....00.0.0.00..0.0.0.0.0....00.
# 00.00.0..0..00.0000..0..00.00.0..0..00.0
# ....0.0.0....00.0.0.........0.0.0....00.
# 0.0.00..0.0.0.0.0....00.0.0.00..0.0.0.0.
# 000..0..00.00.0..0..00.0000..0..00.00.0.
# 0.0.........0.0.0....00.0.0.........0.0.
# 0....00.0.0.00..0.0.0.0.0....00.0.0.00..
# .0..00.0000..0..00.00.0..0..00.0000..0..
# 0....00.0.0.........0.0.0....00.0.0.....
# 0.0.0.0.0....00.0.0.00..0.0.0.0.0....00.
# 00.00.0..0..00.0000..0..00.00.0..0..00.0
# ....0.0.0....00.0.0.........0.0.0....00.
# 0.0.00..0.0.0.0.0....00.0.0.00..0.0.0.0.
# 000..0..00.00.0..0..00.0000..0..00.00.0.
# 0.0.........0.0.0....00.0.0.........0.0.
# 0....00.0.0.00
# .0..00.0000..0
# 0....00.0.0...")).to eq("hello world hello world hello world hello world hello world hello world hello world hello world hello world")
#       end


#{}"helloworldhelloworldhelloworldhelloworldhello world"
