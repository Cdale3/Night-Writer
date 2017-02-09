require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test

  def test_night_writer_exists
    night_writer = NightWriter.new('crushing')
    assert NightWriter, night_writer
  end

  def test_input_is_split
    night_writer = NightWriter.new('crushing')
    assert_equal ['c','r','u','s','h','i','n','g'], night_writer.split_input
  end

  def test_dictionary_is_populated
    night_writer = NightWriter.new("crushing")
    assert_equal [".0", "0.", "0."], night_writer.translate("s")
  end

  def test_english_to_braille
    night_writer = NightWriter.new('hi')
    assert_equal [["0.","00",".."],[".0","0.",".."]] , night_writer.english_to_braille
  end

  def test_format_braille_output
    night_writer = NightWriter.new("hello")
    assert_equal "0.0.0.0.0.\n00.00.0..0\n....0.0.0.\n", night_writer.format_braille_output
  end
end
