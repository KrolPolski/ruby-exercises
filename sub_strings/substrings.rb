def substrings(string, substrings_arr)
  result = {}
  substrings_arr.each do |sub|
    if string.include?(sub)
      count = 0
      working_str = string
      curr_pos = working_str.index(sub)
      until curr_pos == nil
        count += 1
        working_str = working_str[curr_pos + sub.length, working_str.length - curr_pos]
        curr_pos = working_str.index(sub)
      end
      result[sub] = count
    end
  end
  result
end

dictionary = ["So", "long", "and", "thanks", "for", "all", "the", "fish"]
result = substrings("It's been so long long longy longerson since I ate this many fishy fishies", dictionary)
puts "It's been so long since I ate this many fishies"
p dictionary
p result