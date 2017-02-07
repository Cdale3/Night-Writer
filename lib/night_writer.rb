require 'pry'

class NightWriter
  attr_reader :input, :count

  def initialize(input)
    binding.pry
    @input = input
    @count = 0
  end

  def split_input
   input.each_char
  end

  # def count
  #   input.length
  # end

  def english_to_braille
    split_input.map do |letter|
      translate(letter)
    end
  end

  def format_braille_output
    line1, line2, line3 = [], [], []
    english_to_braille.each do |item|
      line1 << item[0]
      line2 << item[1]
      line3 << item[2]
    end
    new_line(line1.join, line2.join, line3.join)
  end

  def new_line(line1, line2, line3)
    final_string = ""
    until line1.length == 0
      final_string << line1.slice!(0..79) + "\n"
      final_string << line2.slice!(0..79) + "\n"
      final_string << line3.slice!(0..79) + "\n"
    end
    final_string
  end

   def translate(key)
     dictionary = {"a" => ["0.","..",".."], "b" => ["0.","0.",".."], "c" => ["00","..",".."], "d" => ["00",".0",".."],
   "e" => ["0.",".0",".."], "f" => ["00","0.",".."], "g" => ["00","00",".."], "h" => ["0.","00",".."],
   "i" => [".0","0.",".."], "j" => [".0","00",".."], "k" => ["0.","..","0."], "l" => ["0.","0.","0."],
   "m" => ["00","..","0."], "n" => ["00",".0","0."], "o" => ["0.",".0","0."], "p" => ["00","0.","0."],
   "q" => ["00","00","0."], "r" => ["0.","00","0."], "s" => [".0","0.","0."], "t" => [".0","00","0."],
   "u" => ["0.","..","00"], "v" => ["0.","0.","00"], "w" => [".0","00",".0"], "x" => ["00","..","00"],
   "y" => ["00",".0","00"], "z" => ["0.",".0","00"], "!" => ["..","00","0."], "'" => ["..","..","0."],
   "," => ["..","0.",".."], "-" => ["..","..","00"], "." => ["..","00",".0"], "?" => ["..","0.","00"],
   "capital" => ["..", "..", ".0"], "number" => [".0", ".0", "00"], " " => ["..","..",".."]}
      dictionary[key]
   end
  #  check = NightWriter.new("hello")
  #  puts check.format_braille_output
end
