# frozen_string_literal: true

def bubble_sort(arr)
  return arr if arr.length < 2

  loop do
    swapped = false

    (0...arr.length - 1).each do |b|
      next unless arr[b] > arr[b + 1]

      # Swap numbers
      arr[b], arr[b + 1] = arr[b + 1], arr[b]
      swapped = true
    end

    break unless swapped
  end

  arr
end

numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
p bubble_sort(numbers)
