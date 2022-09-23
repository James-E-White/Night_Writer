read = ARGV[0] #for this project this will be the read file. I want you to read this and return
#look up File.open research how to access the files and interact with it.

#File.open(input, "r")


path = "message.txt"
night_writer = NightWriter.fromtxt(path)

class NightWriter

  def initialize
    @read_file = ARGV[0]# grabbed the first thing in the index
    @write_file = ARGV[1]#outputting base on in

  end
end
NightWriter.new


#message.txt = ARGV
#path = "message.txt"
# file = File.open("users.txt")
# $ ruby ./lib/night_writer.rb message.txt braille.txt
# Created 'braille.txt' containing 256 characters
# That will use the plaintext file message.txt to create a Braille simulation file braille.txt.
Because of the *, Ruby knows to assign ARGV[0] to first_arg, and the rest of the arguments to the_rest. Let’s prove it:
