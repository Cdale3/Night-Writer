require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require './lib/night_reader'
require 'pry'

class NightReaderTest < Minitest::Test

  def test_night_reader_exists
    nr = NightReader.new("input")
    assert NightReader, nr
  end

  def test_input_is_split
    nr = NightReader.new("0..0\n0.0.\n...0")
    assert_equal ["0..0", "0.0.", "...0"], nr.split_input
  end

  def test_we_can_grab_two_digits_from_array
    nr = NightReader.new("0..0\n0.0.\n...0")
    assert_equal [["0", ".", ".", "0"], ["0", ".", "0", "."], [".", ".", ".", "0"]], nr.split_line
  end

  def test_breaks_out_two_digits_from_line
    nr = NightReader.new("0..0\n0.0.\n...0")
    assert_equal [["0.", "0.", ".."], [".0", "0.", ".0"]], nr.builds_keys
  end

  def test_braille_to_english
    nr = NightReader.new("0.\n..\n..")
    keys = nr.builds_keys
    assert_equal "a", nr.translate(["0.", "..", ".."])
    assert_equal ["a"], nr.braille_to_english(keys)
  end
# .00..0.0...0.0...00.0.0..00000

end
