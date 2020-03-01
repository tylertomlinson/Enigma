require_relative 'generator'

class Offset
  include Generator
  extend Generator

  attr_reader :date

  def initialize(date = default_date)
    @date = date
  end

  def convert_date
    (@date.to_i ** 2).to_s[-4, 4].chars
  end
end
