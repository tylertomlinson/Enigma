class Key
  attr_reader :numbers

  def initialize(numbers = number_generator )
    @numbers = numbers
  end

  def key_splitter
    key_hash = {}
    key_hash["A"] = key.slice(0,2).to_i
    key_hash["B"] = key.slice(1,2).to_i
    key_hash["C"] = key.slice(2,2).to_i
    key_hash["D"] = key.slice(3,2).to_i
    key_hash.merge(key_hash) { |k, v| Integer(v) rescue v }
  end
end
