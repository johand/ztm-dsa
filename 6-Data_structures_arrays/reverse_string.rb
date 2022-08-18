# frozen_string_literal: true

def reverse_string(str)
  return 'hmm that is not good' if str.class != String || str.length < 2

  arr = str.chars
  result = []

  arr.length.times do
    result << arr.pop
  end

  result.join
end

# def reverse_string(str)
#   str.chars.sort_by.with_index { |_, i| -i }.join
# end

str = 'hello my name is Foo'
puts reverse_string(str)
