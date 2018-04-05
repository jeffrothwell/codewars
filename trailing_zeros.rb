def zeros(n)
  count = 0
  i = 5
  while n/i >= 1
    count += n/i
    i *= 5
  end
  count
end

puts zeros(4)
puts zeros(6)
puts zeros(12)
puts zeros(20)
