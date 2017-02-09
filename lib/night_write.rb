require './lib/night_writer'

input = File.read(ARGV[0]).chomp
contents = NightWriter.new(input)
output_text = contents.format_braille_output
File.write(ARGV[1], output_text)

puts "Created '#{ARGV[1]}' containing #{output_text.size} characters."
