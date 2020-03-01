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
    #testing as well for the padding of 0 if 4 numbers are given
    @key.stubs(:rand).returns("3847")

    assert_equal "03847", @key.number_generator
  end

  def test_can_create_hash_with_keys_from_numbers
    expected = {"A"=>02, "B"=>27, "C"=>71, "D"=>15}

    assert_equal expected, @key.key_splitter
  end
end
