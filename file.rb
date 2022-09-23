message = File.open(ARGV[0], "r") # tells the file where to open and that it is a read

incoming_text = message.read

message.close #reads the text after typing ruby file.rb lyrics.txt or ruby filename.txt

reverse_text = incoming_text.reverse

writer = File.open(ARGV[1], "w")

writer.write(reverse_text)

writer.close
