require_relative 'test_helper'

class ShiftTest < Minitest::Test

  def setup
    @key = ("02715")
    @offset = ("040895")
    @shift = Shift.new(@key, @offset)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_attribute
    assert_instance_of String, @key
    assert_instance_of String, @offset
  end

  def test_shifter
    expected = {"A"=>3, "B"=>27, "C"=>73, "D"=>20}
    assert_equal expected, @shift.shifter
  end

  def test_can_find_letter_index_for_each_letter
    assert_equal 7, @shift.letter_index("h")
    assert_equal 17, @shift.letter_index("r")
    refute_equal 12, @shift.letter_index("A")
  end

  def test_can_shift_characters_forward
    skip
    assert_equal "keder ohulw", @shift.encryptor("Hello World")
    assert_equal "keder euus", @shift.encryptor("Hello Mars")
    assert_equal "jogxqizawmghq", @shift.encryptor("GoodNIGHTMOON")
  end

  def test_can_shift_characters_in_reverse
    skip
    assert_equal "hello world", @shift.decryptor("keder ohulw")
    assert_equal "hello mars", @shift.decryptor("keder euus")
    assert_equal "goodnightmoon", @shift.decryptor("jogxqizawmghq")
  end
end
