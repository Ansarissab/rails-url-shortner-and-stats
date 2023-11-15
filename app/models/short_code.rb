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

  end
end
