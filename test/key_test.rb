require_relative 'test_helper'

class KeyTest < Minitest::Test
  include Generator

  def setup
    @key = Key.new("02715")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_attributes
    assert_equal "02715", @key.key

    key1 = Key.new
    #testing number_generator acts as expected
    assert_equal 5, key1.key.length
    assert_instance_of String, key1.key
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
