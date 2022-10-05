# frozen_string_literal: true

def selection_sort(arr)
  return arr if arr.length < 2

  n = arr.length - 1

  n.times.each do |i|
    min = i

    (i + 1..n).each do |j|
      # update minimum if current is lower that what we had previously
      min = j if arr[j] < arr[min]
    end

    arr[i], arr[min] = arr[min], arr[i] if min != i
  end

  arr
end

numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
p selection_sort(numbers)
