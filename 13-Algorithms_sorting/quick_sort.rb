# frozen_string_literal: true

class QuickSort
  attr_reader :arr

  def initialize(arr)
    @arr = arr
  end

  def qsort(left = 0, right = arr.length - 1)
    return arr if arr.empty?

    if left < right
      mid = (left + right) / 2
      pivot = partition(left, right, mid)

      qsort(left, pivot - 1)
      qsort(pivot + 1, right)
    end

    arr
  end

  private

  def partition(left, right, mid)
    pivot = arr[mid]
    swap(arr, mid, right)

    (left...right).each do |i|
      if arr[i] <= pivot
        swap(arr, i, left)
        left += 1
      end
    end

    swap(arr, left, right)
    left
  end

  def swap(arr, one, two)
    arr[one], arr[two] = arr[two], arr[one]
  end
end

numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
qs = QuickSort.new(numbers)
p qs.qsort
