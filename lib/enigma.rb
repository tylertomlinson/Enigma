require_relative 'shift'
require_relative 'generator'

class Enigma
  include Generator

  def encrypt(message, key = number_generator, date = default_date )
    shift = Shift.new(key, date)
    {
      encryption: shift.cypher(message, :+),
      key: key,
      date: date
    }
  end

  def decrypt(message, key = number_generator, date = default_date)
    shift = Shift.new(key, date)
    {
      decryption: shift.cypher(message, :-),
      key: key,
      date: date
    }

    # def crack(output, date = default_date)
  #   (Cracker.new(output, date)).cracker
  #   #hash
  # end
  end
end
