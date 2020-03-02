require_relative 'test_helper'
require './lib/key'
require './lib/offset'
require './lib/generator'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @key = Key.new("02715")
    @offset = Offset.new("040895")
    @shift = Shift.new(@key, @offset)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_attributes
    assert_instance_of Key, @key
    assert_instance_of Offset, @offset
  end

  def test_shifter
    expected = {"A"=>3, "B"=>27, "C"=>73, "D"=>20}
    assert_equal expected, @shift.shifter
  end
end
