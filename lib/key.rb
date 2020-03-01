require_relative 'generator'

class Key
  include Generator
  extend Generator

  attr_reader :key

  def initialize(key = number_generator )
    @key = key
  end

end
