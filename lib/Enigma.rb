require_relative 'generator'

class Enigma
  include Generator
  extend Generator

  def random_key
    key_generator
  end

  def date_offset
    offset_format = default_date
    offset_format *= offset_format
    offset_format.to_s[-4, 4].chars
  end



end
