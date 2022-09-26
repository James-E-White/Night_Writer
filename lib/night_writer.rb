require './lib/dictionary'

class NightWriter
  attr_reader :message,
              :braille #output of what i want to be in braille

  def initialize
    @message = ARGV[0] #File.open(message_file_path, 'r')
    @braille = ARGV[1] #File.open(braille_file_path, 'w')
  end

  def reader(message, mode)
    file = File.open(message, mode)
    message_text = file.read
    file.close
    message_text
  end

   def writer(message, mode)
    incoming_txt = file_reader(ARGV[0], "r")
    file = File.open(message, mode)
    text = file.write(incoming_text)
    puts "Created '#{file_path}' containing #{"message.txt".length} characters"
  end

end

night_writer = NightWriter.new
night_writer.reader(ARGV[0], 'r')
night_writer.writer(ARGV[1], 'w')#"braille.txt")


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
