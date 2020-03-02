class Shift

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def shifter
    @key.key_splitter.merge(@offset.offset_hash) { |key, key_value, offset_value| key_value + offset_value }
  end
end
