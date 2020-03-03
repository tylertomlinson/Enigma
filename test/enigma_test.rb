require_relative 'test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt_and_decrypt_returns_as_hash

    assert_instance_of Hash, @enigma.encrypt("hello world", "02715", "040895")
    assert_instance_of Hash, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_can_encrypt
    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
        }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_can_decrypt
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
 end

  def test_can_encrypt_message_with_only_message_and_key_being_passed
    skip
    assert_equal @expected, @enigma.encrypt("hello world", "02715")
  end

  def test_can_encrypt_message_with_only_message_and_date_being_passed
    skip
    assert_equal @expected, @enigma.encrypt("hello world", "040895")
  end

  def test_can_encrypt_message_with_only_message_being_passed
    skip
    assert_equal @expected, @enigma.encrypt("hello world")
  end
end
