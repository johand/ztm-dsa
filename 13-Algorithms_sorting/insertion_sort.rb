# frozen_string_literal: true

def insertion_sort(arr)
  return arr if arr.length < 2

  (arr.length - 1).times.each do |i|
    j = i + 1

    while arr[j] < arr[j - 1]
      break unless j.positive?

      arr[j], arr[j - 1] = arr[j - 1], arr[j]
      j -= 1
    end
  end

  arr
end

numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
p insertion_sort(numbers)
