def mix(s1, s2)
  s1_freqs = freq_hash(s1)
  s2_freqs = freq_hash(s2)
  puts s1_freqs
  puts s2_freqs
  output_string_array = []
  commmon_letters_hash = {}
  s1_freqs.each do |key, value|
    if s2_freqs.keys.include?(key)
      if s2_freqs[key] > value
        unless commmon_letters_hash[s2_freqs[key]]
          commmon_letters_hash[s2_freqs[key]] = {}
        end
        commmon_letters_hash[s2_freqs[key]][key] = "2"
      elsif s2_freqs[key] < value
        unless commmon_letters_hash[value]
          commmon_letters_hash[value] = {}
        end
        commmon_letters_hash[value][key] = "1"
      else
        unless commmon_letters_hash[value]
          commmon_letters_hash[value] = {}
        end
        commmon_letters_hash[value][key] = "="
      end
    end
  end
  puts commmon_letters_hash
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
