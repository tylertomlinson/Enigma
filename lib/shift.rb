class Shift

  def initialize(key, offset)
    @key = Key.new(key)
    @offset = Offset.new(offset)
  end

  def shifter
    @key.key_splitter.merge(@offset.offset_hash) { |key, key_value, offset_value| key_value + offset_value }
  end

  def letter_index(letter)
    character_set.find_index(letter)
  end

  def letter_offset_value(index)
    shifter.values[index % shifter.length]
  end

  def shift_value(letter, index, operand)
    letter_index(letter).send(operand, letter_offset_value(index))
  end

  def cypher(message, operand)
    message.downcase.chars.map.with_index do |letter, index|
      character_set[shift_value(letter, index, operand) % character_set.length]
    end.join
  end
end
