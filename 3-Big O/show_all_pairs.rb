# frozen_string_literal: true

def show_all_pairs(arr)
  arr.each do |i|
    arr.each do |j|
      puts "#{i} #{j}"
    end
  end
end

boxes = %w[a b c d e]
show_all_pairs(boxes) # => O(n^2)
