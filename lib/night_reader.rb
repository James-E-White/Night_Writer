require './lib/dictionary'

deconstructor = Dictionary.new
handle = File.open(ARGV[0], 'r')
message_text = handle.read

nums_to_char = message_text.length
english_writer = File.open(ARGV[1], 'w')

puts "Created #{ARGV[1]} Containing #{nums_to_char} Characters"
english_writer.write(deconstructor.deconstructor(message_text))
