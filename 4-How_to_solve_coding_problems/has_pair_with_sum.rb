# frozen_string_literal: true

require 'set'

def pair_with_sum?(arr, sum)
  my_set = Set.new

  arr.each do |i|
    return true if my_set.include?(i)

    my_set.add(sum - i)
  end

  false
end

puts pair_with_sum?([6, 4, 3, 2, 1, 7], 9)
