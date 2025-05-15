# frozen_string_literal: false

def caesar_cipher(string, shift_factor)
  result = ''
  string.each_byte do |byte|
    if (byte >= 65 && byte <= 90) || (byte >= 97 && byte <= 122)
      byte += shift_factor
      byte -= 26 if (byte > 90 && byte <= 90 + shift_factor) || (byte > 122 && byte <= 122 + shift_factor)
    end
    result += byte.chr
  end
  puts result
end
