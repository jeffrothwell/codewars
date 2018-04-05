def sort_array(source_array)
  sorted_odds = []
  source_array.each { |num| sorted_odds << num if num.odd?}
  sorted_odds.sort!
  source_array.each_with_index { |num, i| source_array[i] = sorted_odds.shift if num.odd? }
  source_array
end

puts sort_array([5, 3, 2, 8, 1, 4])
