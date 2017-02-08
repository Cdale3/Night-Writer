require './lib/night_reader'

input = File.read(ARGV[0]).chomp
contents = NightReader.new(input)
keys = contents.builds_keys
output_text = contents.format_english(keys)
File.write(ARGV[1], output_text)
