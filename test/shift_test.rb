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

  def test_can_return_letter_index
    assert_equal 7, @shift.letter_index("h")
    assert_equal 17, @shift.letter_index("r")
    refute_equal 12, @shift.letter_index("A")
  end

  def test_can_return_letter_offset_value
    assert_equal 73, @shift.letter_offset_value(10)
    assert_equal 27, @shift.letter_offset_value(17)
    refute_equal 12, @shift.letter_offset_value(7)
  end

  def test_can_return_shift_value
    assert_equal 3, @shift.shift_value("a", 12, :+)
    assert_equal (-10), @shift.shift_value("r", 17, :-)
  end

  def test_cypher_can_map_correctly_with_index
    assert_equal "keder ohulw", @shift.cypher("hello world", :+)
    assert_equal "keder euus", @shift.cypher("Hello Mars", :+)
    assert_equal "jogxqizawmghq", @shift.cypher("GoodNIGHTMOON", :+)
    assert_equal "hello world", @shift.cypher("keder ohulw", :-)
    assert_equal "hello mars", @shift.cypher("keder euus", :-)
    assert_equal "goodnightmoon", @shift.cypher("jogxqizawmghq", :-)
  end

  def test_character_set_has_all_letters_of_alphabet_formatted_correctly
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

    assert_equal expected, @shift.character_set
  end
end
