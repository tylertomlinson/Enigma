require_relative 'test_helper'
require 'date'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    # @encrypted = @enigma.encrypt("hello world", "02715")
    # @enigma.decrypt(@encrypted[:encryption], "02715")
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt_and_decrypt_returns_as_hash
    skip
    assert_instance_of Hash, @engima.encrypt
    assert_instance_of Hash, @enigma.decrypt
  end
end




# pry(main)> enigma.encrypt("hello world", "02715", "040895")
#
#   {
#     encryption: "keder ohulw",
#     key: "02715",
#     date: "040895"
#   }

# decrypt a message with a key and date
# pry(main) > enigma.decrypt("keder ohulw", "02715", "040895")
# #=>
# #   {
# #     decryption: "hello world",
# #     key: "02715",
# #     date: "040895"
# #   }
#
# # encrypt a message with a key (uses today's date)
# pry(main)> encrypted = enigma.encrypt("hello world", "02715")
# #=> # encryption hash here
#
# #decrypt a message with a key (uses today's date)
# pry(main) > enigma.decrypt(encrypted[:encryption], "02715")
# #=> # decryption hash here
#
# # encrypt a message (generates random key and uses today's date)
# pry(main)> enigma.encrypt("hello world")
# #=> # encryption hash here
