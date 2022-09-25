require './lib/dictionary'

RSpec.describe Dictionary do
    it 'exists' do
      dictionary = Dictionary.new
      expect(dictionary).to be_a(Dictionary)
    end

    it 'has a method that can translate to braille' do
     dictionary = Dictionary.new
     expect(dictionary.translator('a')).to eq("0.....")
     expect(dictionary.translator('b')).to eq("0.0...")
     expect(dictionary.translator('c')).to eq("00....")
     # require "pry";binding.pry

   end
end
