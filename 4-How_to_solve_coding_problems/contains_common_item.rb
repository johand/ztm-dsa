# frozen_string_literal: true

def contains_common_item(arr1, arr2)
  # Loop through first array and create object where properties === items in
  # the array
  h = {}

  arr1.each do |i|
    h[i] = true unless h.include?(i)
  end

  # loop through second array and check if item in second array exists on
  # created object
  arr2.each do |j|
    return true if h.include?(j)
  end

  false
end

# O(a + b) Time Complexity
array1 = %w[a b c x]
array2 = %w[z y a]

puts contains_common_item(array1, array2)

# def contains_common_item2(arr1, arr2)
#   return true if arr1.intersect?(arr2)

#   false
# end

# puts contains_common_item2(array1, array2)
