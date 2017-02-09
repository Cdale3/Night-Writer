require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'
require 'pry'

class NightReaderTest < Minitest::Test
  def test_night_reader_exists
    night_reader = NightReader.new

    assert_instance_of NightReader, night_reader
  end

  def test_night_reader_stores_input
      night_reader = NightReader.new("crispy")

      assert_equal "crispy", night_reader.input
  end

  def test_night_reader_counts_input_characters
    night_reader = NightReader.new("crunchy")

    assert_equal 7, night_reader.count
  end

  def test_split_input_on_new_line_charater
    night_reader = NightReader.new("sweet\nsour")

    assert_equal ["sweet", "sour"], night_reader.split_input
  end

  def test_input_array_splits_into_nested_arrays
    night_reader = NightReader.new("O.O.\nOO..\n..OO")

    assert_equal [["O",".","O","."],["O","O",".","."],[".",".","O","O"]], night_reader.split_array
  end

  def test_keys_are_created
    night_reader = NightReader.new("O.O.\nOO..\n..OO")

    assert_equal [["O.", "OO", ".."], ["O.", "..", "OO"]], night_reader.create_keys
  end

  #test translate method
  #test hash is reversed
  #incorporate capital letters

end
