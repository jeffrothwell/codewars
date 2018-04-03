# def remove_smallest(numbers)
#   # throw NotImplementedError.new "TODO: remove_smallest"
#   numbers.sort!.reverse!.pop
#   numbers
# end

def remove_smallest(numbers)
  biggest = 0
  if !numbers.any?
    return numbers
  end
  index_to_delete = nil
  numbers.each_with_index do |num, i|
    if num > biggest
      index_to_delete = i
    end
  end
  numbers.delete_at(index_to_delete)
  numbers
end


output = remove_smallest([2,5,4,6,8,2])
puts output
