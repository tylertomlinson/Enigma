require_relative 'generator'

class Key
  include Generator
  attr_reader :key

  def initialize(key = number_generator )
    @key = key
  end

  def key_splitter
    key_hash = {}
    key_hash["A"] = key.slice(0,2)
    key_hash["B"] = key.slice(1,2)
    key_hash["C"] = key.slice(2,2)
    key_hash["D"] = key.slice(3,2)
    key_hash.merge(key_hash) { |k, v| Integer(v) rescue v }
  end
end
