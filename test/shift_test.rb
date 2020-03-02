require_relative 'test_helper'
require './lib/key'
require './lib/offset'
require './lib/generator'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_attributes
    skip
  end
end
