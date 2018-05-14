def mix(s1, s2)
  s1_freqs = freq_hash(s1)
  s2_freqs = freq_hash(s2)
  output_string_array = []
  commmon_letters_hash = {}
  s1_freqs.each do |key, value|
    if s2_freqs.keys.include?(key)
      if s2_freqs[key] > value
        commmon_letters_hash[key] = {"2" => s2_freqs[key]}
      elsif s2_freqs[key] < value
        commmon_letters_hash[key] = {"1" => value}
      else
        commmon_letters_hash[key] = {"=" => value}
      end
    end
  end
  puts commmon_letters_hash.sort_by{ |_key, value| value.values.first }.reverse.to_h
end

def freq_hash(hash)
  frequency_hash = {}
  hash.split(//).each do |char|
    if /[a-z]/.match(char)
      if frequency_hash[char]
        frequency_hash[char] += 1
      else
        frequency_hash[char] = 1
      end
    end
  end
  frequency_hash
end

s1 = "my&friend&Paul has heavy hats! &"
s2 = "my friend John has many many friends &"
mix(s1, s2) # --> "2:nnnnn/1:aaaa/1:hhh/2:mmm/2:yyy/2:dd/2:ff/2:ii/2:rr/=:ee/=:ss"
