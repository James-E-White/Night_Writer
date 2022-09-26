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
    words.join("")
  end

  def stack_braille(text)
    words = translator(text)
    first_line = words.slice(0..1)
    second_line = words.slice(2..3)
    third_line = words.slice(4..5)
    first_line.insert(2, "\n")
    second_line.insert(2, "\n")
    (first_line + second_line + third_line)

  end

end




  #def translator(letter)
  #I want the method to translate one character to braille.
  #out put in braille.txt
  #I need to take my letter argument
  #match it to a key in my dictionary hash
  #if letter == my dictionary key than
  #  print the value
