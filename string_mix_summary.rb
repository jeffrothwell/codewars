def mix(s1, s2)
    s1_frequency_hash = {}
    s2_frequency_hash = {}
    s1.split(//).each do |char|
      if /[a-z]/.match(char)
        puts char
      end
    end
end

s1 = "my&friend&Paul has heavy hats! &"
s2 = "my friend John has many many friends &"
mix(s1, s2) # --> "2:nnnnn/1:aaaa/1:hhh/2:mmm/2:yyy/2:dd/2:ff/2:ii/2:rr/=:ee/=:ss"
