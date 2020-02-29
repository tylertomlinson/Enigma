require_relative 'test_helper'
require 'date'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_can_generate_5_random_numbers
    @enigma.stubs(:key_generator).returns([4,5,2,3,6])

    assert_equal [4,5,2,3,6], @enigma.random_key
  end

  def test_can_generate_current_date
    Date.stubs(:today).returns(Date.new(2020,2,27))

    assert_equal "200227", @engima.default_date


  def test_encrypt_and_decrypt_returns_as_hash
    skip
    assert_instance_of Hash, @engima.encrypt
    assert_instance_of Hash, @enigma.decrypt
  end

  def test_can_encrypt_message_with_all_arguments_being_passed
    skip
    expected = {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_can_encrypt_message_with_only_message_and_key_being_passed
    skip
    expected = {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }

    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_can_encrypt_message_with_only_message_and_date_being_passed
    skip
    expected = {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }

    assert_equal expected, @enigma.encrypt("hello world", "040895")
  end

  def test_can_encrypt_message_with_only_message_being_passed
    skip
    expected = {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }

    assert_equal expected, @enigma.encrypt("hello world")
  end
end
