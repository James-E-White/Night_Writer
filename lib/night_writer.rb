# require './lib/Dictionary'
#
# class NightWriter
#   attr_reader :braille_writer, #output of what i want to be in braille
#               :dictionary,
#               :message,
#               :read_file,
#               :write_file
#
#   def initialize
#     @read_file = ARGV[0]
#     @write_file = ARGV[1]
#     @dictionary = Dictionary.new
#   end
#
#   night_writer = NightWriter.new(ARGV[0], ARGV[1])
#   p "Created '#{ARGV[1]}' containing #{character_length} characters"
# end
