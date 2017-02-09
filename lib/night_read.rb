require './lib/night_reader'

input = File.read(ARGV[0]).chomp
contents = NightReader.new(input)
keys = contents.builds_keys
string = contents.format_english(keys)
output_text = contents.capitalize(string)
File.write(ARGV[1], output_text)

puts "Created '#{ARGV[1]}' containing #{output_text.size} characters."
