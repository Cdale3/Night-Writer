require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_writer'
require 'pry'

class NightWriterTest <Minitest::Test
  attr_reader :nr
  def Setup
    # binding.pry
    @nr = NightWriter.new
  end

  def test_night_writer_exists
    assert NightWriter, nr
  end

  def test_dictionary_is_populated
    # skip
    nr = NightWriter.new
    assert_equal [".O", "O.", "O."], nr.translate("s")
  end

  def test_english_to_braille
    nr = NightWriter.new
    assert_equal [["O.","OO",".."],[".O","O.",".."]] ,nr.english_to_braille("hi")
  end

  def test_format_braille_output
    nr = NightWriter.new
    assert_equal,
  end
end
