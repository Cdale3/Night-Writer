class NightReader
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def split_input
    input.split("\n")
  end

  def split_line
    split_input.map { |char| char.chars }
  end

  def builds_keys
    keys = []
    line1, line2, line3 = split_line
    until line1.empty?
        keys << [line1.shift(2).join, line2.shift(2).join, line3.shift(2).join]
    end
    keys
  end

  def braille_to_english(keys)
    keys.map { |key| translate(key)}
  end

  def format_english(keys)
    braille_to_english(keys).join
  end

  def translate(key)
    dictionary = {["0.", "..", ".."]=>"a",
 ["0.", "0.", ".."]=>"b",
 ["00", "..", ".."]=>"c",
 ["00", ".0", ".."]=>"d",
 ["0.", ".0", ".."]=>"e",
 ["00", "0.", ".."]=>"f",
 ["00", "00", ".."]=>"g",
 ["0.", "00", ".."]=>"h",
 [".0", "0.", ".."]=>"i",
 [".0", "00", ".."]=>"j",
 ["0.", "..", "0."]=>"k",
 ["0.", "0.", "0."]=>"l",
 ["00", "..", "0."]=>"m",
 ["00", ".0", "0."]=>"n",
 ["0.", ".0", "0."]=>"o",
 ["00", "0.", "0."]=>"p",
 ["00", "00", "0."]=>"q",
 ["0.", "00", "0."]=>"r",
 [".0", "0.", "0."]=>"s",
 [".0", "00", "0."]=>"t",
 ["0.", "..", "00"]=>"u",
 ["0.", "0.", "00"]=>"v",
 [".0", "00", ".0"]=>"w",
 ["00", "..", "00"]=>"x",
 ["00", ".0", "00"]=>"y",
 ["0.", ".0", "00"]=>"z",
 ["..", "00", "0."]=>"!",
 ["..", "..", "0."]=>"'",
 ["..", "0.", ".."]=>",",
 ["..", "..", "00"]=>"-",
 ["..", "00", ".0"]=>".",
 ["..", "0.", "00"]=>"?",
 ["..", "..", ".0"]=>"capital",
 [".0", ".0", "00"]=>"number",
 ["..", "..", ".."]=>" "}
  dictionary[key]
  end
end


#with braille character, we want to split by the new line character
#