require './lib/dictionary'
#Maybe not have methods maybe just have the i/o here for coverage.
class NightWriter
  attr_reader :read_file,
              :write_file #output of what i want to be in braille

  def initialize
    @read_file = read_file #File.open(message_file_path, 'r')
    @write_file = write_file #File.open(braille_file_path, 'w')
  end

  def reader
    file = File.open(@read_file, mode)
    message_text = file.read
    file.close
    message_text
  end

   def writer
    # incoming_txt = file_reader(@message, "r")
    new_file = File.open(write_file, "w")
    new_file.write(write_braille)
    new_file.close
    puts "Created '#{file_path}' containing #{"message.txt".length} characters"
  end

  def translate_to_braille
    translate_to_braille = @write_braille
    read_file_txt << write_braille
    require "pry";binding.pry
  end
end

#night_writer = NightWriter.new
#night_writer.reader(ARGV[0], 'r')
#night_writer.writer(ARGV[1], 'w')#"braille.txt")


 #  if ARGV.size == 2
 #  night_writer = NightWriter.new
 #  night_writer.write_file
 #  puts "Created '#{night_writer.write_file}' containing #{night_writer.read_file_char_count} characters"
 # end
# night_writer = NightWriter.new(ARGV[0], ARGV[1])
# p "Created '#{ARGV[1]}' containing #{character_length} characters"

#  def read_file_count
#   read_file_txt.length
# end
# def read_write(message, mode)
#   message_file = File.open(message)
#   message_read = message_file.read
#   file.close
#   english.txt
#   incoming_txt = file_reader(ARGV[0], "r")
#   file = File.open(message, mode)
#   text = File.write(incoming_text)
#   puts "Created '#{file_path}' containing #{"message.txt".length} characters"
# end

# message = File.open(ARGV[0], "r") # tells the file where to open and that it is a read
#
# incoming_text = message.read
#
# message.close #reads the text after typing ruby file.rb lyrics.txt or ruby filename.txt
#
# # reverse_text = incoming_text.reverse
#
# writer = File.open(ARGV[1], "w")
#
# writer.write
#
# writer.close
