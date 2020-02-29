require_relative 'generator'

class Enigma
  include Generator
  extend Generator

  def random_key
    key_generator
  end

  default_date



end
