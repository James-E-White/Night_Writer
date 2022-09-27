require './lib/dictionary'

english_translator = Dictionary.new
handle = File.open(ARGV[0], 'r')
message_text = handle.read

char_to_nums = message_text.length
braille_writer = File.open(ARGV[1], 'w')

puts "Created #{ARGV[1]} Containing #{char_to_nums} Characters"
braille_writer.write(english_translator.write_braille(message_text))
