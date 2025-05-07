def caesar_cipher(string, shift_factor)
  print "before: #{string}\n"
  result = ""
  string.each_byte {|byte|
    if ((byte >= 65 && byte <= 90 - shift_factor) || (byte >= 97 && byte <= 122 - shift_factor))   
      byte += shift_factor
      result += byte.chr
    end
    }
  print "after: #{result}"
end

caesar_cipher("abcde", 4)