# frozen_string_literal: true

def reverse_string(str)
  return str if str.length < 2

  reverse_string(str[1..]) + str[0]
end

puts reverse_string('yoyo master')
