
class NightWriter

  def english_to_braille(string)
    letters = string.split("")
    braille_letter = letters.map do |letter|
      translate(letter)
    end
  end

  def format_braille_output(array)
    line1, line2, line3 = [], [], []
    array.each do |item|
      line1 << item[0]
      line2 << item[1]
      line3 << item[2]
    end
    new_line(line1.join, line2.join, line3.join)
  end

   def translate(key)
     dictionary = {"a" => ["O.","..",".."], "b" => ["O.","O.",".."], "c" => ["OO","..",".."], "d" => ["OO",".O",".."],
        "e" => ["O.",".O",".."], "f" => ["OO","O.",".."], "g" => ["OO","OO",".."], "h" => ["O.","OO",".."],
        "i" => [".O","O.",".."], "j" => [".O","OO",".."], "k" => ["O.","..","O."], "l" => ["O.","O.","O."],
        "m" => ["OO","..","O."], "n" => ["O.",".O","O."], "o" => ["O.",".O","O."], "p" => ["OO","O.","O."],
        "r" => ["O.","OO","O."], "s" => [".O","O.","O."], "t" => [".O","OO","O."], "u" => ["O.","..","OO"],
        "v" => ["O.","O.","OO"], "w" => [".O","OO",".O"], "x" => ["OO","..","OO"], "y" => ["OO",".O","OO"],
        "z" => ["O.",".O","OO"], " " => ["..","..",".."]}
      dictionary[key]
   end
end
