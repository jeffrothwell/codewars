def find_missing_letter(arr)
  arr.each_with_index do |letter, i|
    if arr[i + 1].ord - letter.ord > 1
      return (letter.ord + 1).chr("UTF-8")
    end
  end
end

puts find_missing_letter(["a", "b", "d"])
