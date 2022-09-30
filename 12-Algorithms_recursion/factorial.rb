# frozen_string_literal: true

def factorial(num)
  return 1 if num.zero?
  return num * factorial(num - 1) if num.positive?
end

puts factorial(5)
