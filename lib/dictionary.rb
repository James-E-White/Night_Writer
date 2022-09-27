class Dictionary
  attr_reader :alphabet
  def initialize
    #@word = word.downcase
    @alphabet = {'a' => "0.....",
    'b' => "0.0...",
    'c' => "00....",
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
     }
   @braille_to_english_alphabet = alphabet.invert
  end


  def translator(text)
    words = []
    letters = text.chars
    letters.each do |letter|
     @alphabet.each do |character, braille|
      if letter == character
        words << braille
      end
     end
    end
    words
  end

  def write_braille(text)
    braille = translator(text)
    row1 = []
    row2 = []
    row3 = []
    stacked_braille = ""
    braille.each do |letters|
     row1 << letters[0..1]
     row2 << letters[2..3]
     row3 << letters[4..5]
    end
       while row1.length > 0
        stacked_braille += (row1.shift(20).join + "\n" + row2.shift(20).join + "\n" + row3.shift(20).join)
        stacked_braille += "\n" if row1.length > 0
       end

     stacked_braille

   end

end
   
