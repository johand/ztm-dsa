# frozen_string_literal: true

# O(n)
def factorial(num)
  return 1 if num.zero?
  return num * factorial(num - 1) if num.positive?
end

puts factorial(5)
