class Shift

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def shifter
    @key.key_splitter.merge(@offset.offset_hash) { |key, k_val, o_val| k_val + o_val }
  end
end
