# frozen_string_literal: true

def merge_sorted_arrays(array1, array2)
  merged_arr = []
  i = 0
  j = 0

  array2 if array1.length.zero?
  array1 if array2.length.zero?

  while array1[i] || array2[j]
    if !array1[i].nil? && (array2[j].nil? || array1[i] <= array2[j])
      merged_arr << array1[i]
      i += 1
    else
      merged_arr << array2[j]
      j += 1
    end
  end

  merged_arr

  # until array1.empty? || array2.empty?
  #   merged_arr << if array1.first <= array2.first
  #                   array1.shift
  #                 else
  #                   array2.shift
  #                 end
  # end

  # merged_arr + array1 + array2

  # (array1 + array2).sort
end

p merge_sorted_arrays([0, 3, 4, 31], [3, 4, 6, 30])
