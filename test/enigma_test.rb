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

  def test_can_encrypt_with_all_three_arguments_being_passed
    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
        }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_can_encrypt_with_only_message_and_key_being_passed
    expected = {
      encryption: "kmbirhmlutu",
      key: "02715",
      date: default_date
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_can_encrypt_with_only_message_and_date_being_passed
    @enigma.stubs(:rand).returns("05857")

    expected = {
      encryption: "nirtudbwxpj",
      key:  "05857",
      date: "040895"
    }

    assert_equal expected, @enigma.encrypt("hello world", @enigma.number_generator, "040895")
  end

  def test_can_encrypt_with_only_message_being_passed
    @enigma.stubs(:rand).returns("05857")

    expected = {
      encryption: "nqpxul  xxh",
      key: "05857",
      date: default_date
    }

    assert_equal expected, @enigma.encrypt("hello world", @enigma.number_generator, default_date )
  end

  def test_can_decrypt_with_all_three_arguments_being_passed
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_can_decrypt_with_only_message_and_key_being_passed
    expected = {
      decryption: "exvolsfrodn",
      key: "02715",
      date: default_date
    }
    assert_equal expected, @enigma.decrypt("hello world", "02715")
  end

  def test_can_decrypt_with_only_message_and_date_being_passed
    @enigma.stubs(:rand).returns("05857")

    expected = {
      decryption: "bafdiwqglhy",
      key:  "05857",
      date: "040895"
    }

    assert_equal expected, @enigma.decrypt("hello world", @enigma.number_generator, "040895")
  end

  def test_can_decrypt_with_only_message_being_passed
    @enigma.stubs(:rand).returns("05857")

    expected = {
      decryption: "bth ioscl  ",
      key: "05857",
      date: default_date
    }

    assert_equal expected, @enigma.decrypt("hello world", @enigma.number_generator, default_date )
  end


end
