require './lib/dictionary'

RSpec.describe Dictionary do
  before(:each) do
    @dictionary = Dictionary.new(alphabet = {"a" => "0.....",
                                            "b" => "0.0...",
                                            "c" => "00....",
                                            "d" => "00.0..",
                                            "e" => "0..0..",
                                            "f" => "000...",
                                            "g" => "0000..",
                                            "h" => "0.00..",
                                            "i" => ".00...",
                                            "j" => ".000..",
                                            "k" => "0...0.",
                                            "l" => "0.0.0.",
                                            "m" => "00..0.",
                                            "n" => "00.00.",
                                            "o" => "0..00.",
                                            "p" => "000.0.",
                                            "q" => "00000.",
                                            "r" => "0.000.",
                                            "s" => ".00.0.",
                                            "t" => ".0000.",
                                            "u" => "0...00",
                                            "v" => "0.0.00",
                                            "w" => ".000.0",
                                            "x" => "00..00",
                                            "y" => "00.000",
                                            "z" => "0..000",
                                            " " => "......"
                                })
  end
    it 'exists' do
    expect(@dictionary).to be_a(Dictionary)
    end

    it 'has a method that can translate to braille' do

     expect(@dictionary.translator('a')).to eq("0.....")
     expect(@dictionary.translator('b')).to eq("0.0...")
     expect(@dictionary.translator('c')).to eq("00....")
     # require "pry";binding.pry
   end

   describe "#stack_braille" do
    it "will return the braile letter in 2 by 3 stack" do
     expect(@dictionary.stack_braille("a")).to eq("0.\n""..\n""..")

    end
  end

    xit 'can translate an english word to braille' do
      expect(@dictionary.translator("")).to(eq(""))
  end

    xit 'can read message text to a new file braille text' do
      expect(@dictionary.braille).to(eq(true))
  end
end
