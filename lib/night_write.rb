require_relative 'night_writer'
require 'pry'

input = File.read(ARGV[0]).chomp
contents = NightWriter.new(input)
output_text = contents.format_braille_output
File.write(ARGV[1], output_text)
