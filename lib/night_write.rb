require_relative './night_writer'
require 'pry'
#
# class Execute
#   attr_reader :contents
#
#   def initialize
#     @contents = contents
#   end

  # def read
    input = File.read(ARGV[0]).chomp
    contents = NightWriter.new(input)
    binding.pry
    output_text = contents.format_braille_output
    File.write(ARGV[1], output_text)
  # end

  # def write
    # output_file = ARGV[1]
    # output = File.open(output_file, 'w')
    # output.write(contents)
    # output.close
#   end
# end
#
# nw = NightWriter.new(contents)
# check = Execute.new
