require_relative 'generator'

class Offset
  include Generator
  extend Generator

  def convert_date
    squared_date = default_date
    (squared_date *= squared_date).to_s[-4, 4].chars
  end
end
