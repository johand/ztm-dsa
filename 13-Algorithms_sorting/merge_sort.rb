# frozen_string_literal: true

class MergeSort
  def sort(arr)
    return arr if arr.length < 2

    # Split array in into right and left
    mid = arr.length / 2
    left = arr.take(mid)
    right = arr.drop(mid)

    merge(sort(left), sort(right))
  end

  private

  def merge(left, right)
    return right if left.empty?
    return left if right.empty?

    result = if left.first <= right.first
               left.shift
             else
               right.shift
             end

    [result] + merge(left, right)
  end

  # def merge(left, right)
  #   result = []

  #   while !left.empty? && !right.empty?

  #     result << if left.first <= right.first
  #                 left.shift
  #               else
  #                 right.shift
  #               end
  #   end

  #   result.concat(left, right)
  # end
end

numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
m = MergeSort.new
p m.sort(numbers)
