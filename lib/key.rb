require_relative 'generator'

class Key
  include Generator
  extend Generator
  
  attr_reader :key

  def initialize(key)
    @key = key
  end
end
