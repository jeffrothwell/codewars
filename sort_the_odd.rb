def sort_array(source_array)
  sorted_odds = []
  source_array.each { |i| sorted_odds << i if i % 2 != 0}
  sorted_odds.sort!
  source_array.each_with_index { |num, i| source_array[i] = sorted_odds.shift if num % 2 != 0 }
  source_array
end

puts sort_array([5, 3, 2, 8, 1, 4])
