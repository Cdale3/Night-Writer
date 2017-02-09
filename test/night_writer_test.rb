require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require 'pry'

class NightWriterTest < Minitest::Test
  attr_reader :night_writer
  def Setup
    # binding.pry
    @night_writer = NightWriter.new
  end

  def test_night_writer_exists
    assert NightWriter, night_writer
  end

  def test_input_is_split
    skip
    night_writer = NightWriter.new('crushing')
    assert_equal ['c','r','u','s','h','i','n','g'], night_writer.split_input
  end

  def test_dictionary_is_populated
    skip
    night_writer = NightWriter.new
    assert_equal [".O", "O.", "O."], night_writer.translate("s")
  end

  def test_english_to_braille

    night_writer = NightWriter.new("As")
    assert_equal [["..", "..", ".0"],["0.","..",".."]] ,night_writer.english_to_braille
  end

  def test_format_braille_output
    skip
    night_writer = NightWriter.new
    night_writer.english_to_braille("ab")
    assert_equal ["O.","..",".."],["O.","O.",".."], night_writer.format_braille_output(braille_letter)
  end
end
