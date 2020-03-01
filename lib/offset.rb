require_relative 'generator'

class Offset
  include  Generator

  attr_reader :date

  def initialize(date = default_date)
    @date = date
    @offset = date_offset_hash
  end

  def convert_date
    (@date.to_i ** 2).to_s[-4, 4].chars
  end

  def date_offset_hash
    offset_hash = {}
    offset_hash["A"] = convert_date[0].to_i
    offset_hash["B"] = convert_date[1].to_i
    offset_hash["C"] = convert_date[2].to_i
    offset_hash["D"] = convert_date[3].to_i
    offset_hash
  end
end
