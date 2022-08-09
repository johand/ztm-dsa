# frozen_string_literal: true

def find_nemo(arr)
  arr.each_with_index do |_item, index|
    puts 'Found NEMO!' if arr[index] == 'nemo'
  end
end

find_nemo(['nemo'])
