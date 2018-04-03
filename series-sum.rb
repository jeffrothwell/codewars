require 'pry'

def series_sum(n)
  # Happy Coding ^_^
  sum = 1.0
  if n == 1
    return sprintf('%.2f', sum)
  else
    # denom = 4.0
    # (n - 1).times do
    #   sum += (1/denom)
    #   denom += 3
    # end
    (n - 1).times { |i| sum += (1.0/(4 + (3 * i))) }
  end
  return sprintf('%.2f', sum)
end

puts series_sum(2)
