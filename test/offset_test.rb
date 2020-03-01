require_relative 'test_helper'
require './lib/generator'
require './lib/offset'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_attributes
    skip
  end

  def test_can_format_date_for_offset
    Date.stubs(:today).returns(Date.new(2020,2,27))

    assert_equal ["1", "5", "2", "9"], @enigma.date_offset
  end

  def test_can_generate_current_date
    Date.stubs(:today).returns(Date.new(2020,2,27))

    assert_equal 200227, @enigma.default_date
  end
end
