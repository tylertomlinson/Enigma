require_relative 'generator'

class Enigma
  include Generator
  extend Generator

  def random_key
    key_generator
  end

  def current_date
    default_date
  end
end
