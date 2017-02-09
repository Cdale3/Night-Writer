class NightReader
  attr_reader :input
  def initialize(string = nil)
    @input = string
  end

  def count
    input.length
  end

  def split_input
    input.split
  end

  def split_array
    split_input.map { |char| char.split("") }
  end

  def create_keys
    line1, line2, line3 = split_array
    key_array = []
    until line1.length == 0
    key_array << [line1.shift(2).join, line2.shift(2).join, line3.shift(2).join]
    end
    key_array
  end

  def translate
    # reverse hash and use braille as key to find letter values
  end
end
