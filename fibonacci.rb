def fibonacci(n)
  return n if (0..1).include? n
  return 1 if n == 2

  sequence_array = [1,1]
  (n - 2).times do
    sequence_array << (sequence_array[-1] + sequence_array[-2])
  end

  sequence_array[-1]
end

puts fibonacci(70)
