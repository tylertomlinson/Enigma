require_relative 'test_helper'
require './lib/generator'
require './lib/offset'

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

  #need to test
  #if it has date (from user)
  #can get default_date
  #can convert users date
  #can convert default_date
  #build hash like keys

  def test_can_format_generated_date_for_offset
    Date.stubs(:today).returns(Date.new(2020,2,27))

    offset2 = Offset.new(default_date)
    #this needs to be testing for user input as well


    assert_equal ["1", "5", "2", "9"], offset2.convert_date
  end

  def test_can_generate_current_date
    Date.stubs(:today).returns(Date.new(2020,2,27))

    assert_equal 200227, @offset.default_date
  end
end
