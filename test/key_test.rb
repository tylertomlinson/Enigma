require_relative 'test_helper'
require './lib/generator'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new("02715")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_can_generate_5_random_numbers
    @key.stubs(:rand).returns("3847")

    assert_equal "03847", @key.number_generator
  end
end
