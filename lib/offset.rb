require_relative 'generator'

class Offset
  include Generator
  extend Generator

  attr_reader :date

  def initialize(date = default_date)
    @date = date
  end

  def convert_date
    squared_date = @date.to_i
    (squared_date *= squared_date).to_s[-4, 4].chars
  end


end
