# frozen_string_literal: true

def first_two_boxes(boxes)
  puts boxes[0] # => O(1)
  puts boxes[1] # => O(1)
end

boxes = [0, 1, 2, 3, 4, 5]
# => O(2)
# => 0(1) Constant Time
first_two_boxes(boxes)
