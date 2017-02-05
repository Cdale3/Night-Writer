require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require 'pry'

class NightReaderTest < Minitest::Test
  attr_reader :night_reader
  def Setup
    @night_reader = NightReader.new
  end

  def test_night_reader_exists
    assert NightReader, night_reader
  end

  def test_input_to_array
    assert_equal ,night_reader.input_to_array
  end

  def test_array_to_letters

  end
end
