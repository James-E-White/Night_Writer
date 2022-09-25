require './lib/dictionary'

class NightWriter
  attr_accessor :message,
                :braille_file, #output of what i want to be in braille

  def initialize
    @message = File.open(message_file_path, 'r')
    @braille_file = File.open(braille_file_path, 'w')
  end


  def read_write(message_file_path, braille_file_path)
    message = @message.read
    require "pry";binding.pry
  end


  def writer_file
    incoming_message = reader_file(ARGV[0], "r")
    file = File.open(message)
    message = file.write(incoming_message)
    puts "Created '#{ARGV[1]}' containing #{incoming_message.length} characters"
  end


end

# night_writer = NightWriter.new(ARGV[0], ARGV[1])
# night_writer.reader_file
# night_writer.writer_file



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
