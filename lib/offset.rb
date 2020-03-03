class Offset
  attr_reader :date
  
  def initialize(date = default_date)
    @date = date
  end

  def convert_date
    (@date.to_i ** 2).to_s[-4, 4].chars
  end

  def offset_hash
    date_offset_hash = {}
    date_offset_hash["A"] = convert_date[0].to_i
    date_offset_hash["B"] = convert_date[1].to_i
    date_offset_hash["C"] = convert_date[2].to_i
    date_offset_hash["D"] = convert_date[3].to_i
    date_offset_hash
  end
end
