require './lib/dictionary'
#Maybe not have methods maybe just have the i/o here for coverage.
english_translator = Dictionary.new
handle = File.open(ARGV[0], 'r')
message_text = handle.read

char_to_nums = message_text.length
braille_writer = File.open(ARGV[1], 'w')

puts "CREATED #{ARGV[1]} CONTAINING #{char_to_nums} CHARACTERS"
braille_writer.write(english_translator.write_braille(message_text))
