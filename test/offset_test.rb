require_relative 'test_helper'

class OffsetTest < Minitest::Test
  include Generator

  def setup
    @offset = Offset.new("040895")
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_attributes
    assert_equal "040895", @offset.date
  end

  def test_can_generate_current_date
    Date.stubs(:today).returns(Date.new(2020,2,27))

    assert_equal "200227", @offset.default_date
  end

  def test_can_format_user_inputed_date_for_offset
    assert_equal ["1", "0", "2", "5"], @offset.convert_date
  end

  def test_can_format_generated_date_for_offset
    Date.stubs(:today).returns(Date.new(2020,2,27))

    offset2 = Offset.new(default_date)

    assert_equal ["1", "5", "2", "9"], offset2.convert_date
  end

  def test_can_create_hash_with_offset_from_last_four
    expected = {"A"=>1, "B"=>0, "C"=>2, "D"=>5}

    assert_equal expected, @offset.offset_hash
  end
end
