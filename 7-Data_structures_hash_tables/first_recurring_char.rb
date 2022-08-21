# frozen_string_literal: true

# Google Question
# Given an array = [2,5,1,2,3,5,1,2,4]:
# It should return 2

# Given an array = [2,1,1,2,3,5,1,2,4]:
# It should return 1

# Given an array = [2,3,4,5]:
# It should return undefined

# def first_recurring_character(input)
#   (0..input.length).each.with_index do |_e, i|
#     (1..input.length).each.with_index do |_e, j|
#       return input[i] if input[i] == input[j]
#     end
#   end
# end

def first_recurring_character(input)
  hash = {}

  input.each.with_index do |e, i|
    puts hash
    return e if hash.key?(e)

    hash[e] = i
  end

  nil
end

p first_recurring_character([2, 5, 1, 2, 3, 5, 1, 2, 4])
