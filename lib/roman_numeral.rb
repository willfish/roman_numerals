class RomanNumerals
  class InvalidNumeral < ArgumentError; end

  ROMAN_NUMERALS = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "M" => 1000,
  }.freeze

  def translate(roman_numeral)
    acc = 0

    roman_numeral.chars.each_with_index do |sub_numeral, index|
      after_index = index + 1
      next_numeral = roman_numeral[after_index]

      current_numeral_value = ROMAN_NUMERALS[sub_numeral]

      raise InvalidNumeral, "Invalid Numeral" if current_numeral_value.nil?

      if next_numeral.nil?
        acc += current_numeral_value
      else
        next_numeral_value = ROMAN_NUMERALS[next_numeral]
        if next_numeral_value <= current_numeral_value
          acc += current_numeral_value
        else
          acc -= current_numeral_value
        end
      end
    end

    acc
  end
end
