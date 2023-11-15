class ShortCode
  ALPHABETS = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze

  BASE = ALPHABETS.length

  def self.encode(number)
    return ALPHABETS.first if number.zero? || number.nil?

    result = ""

    while number.positive?
      index = number % BASE
      char = ALPHABETS[index]
      result.prepend(char)
      number /= BASE
    end

    result
  end

  def self.decode(string)
    number = 0

    string.reverse.each_char.with_index do |char, index|
      power = BASE**index
      index = ALPHABETS.index(char)
      number += index * power
    end

    number
  end
end
