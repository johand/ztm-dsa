# frozen_string_literal: true

@cache = {}

def fibonacci(num)
  return @cache[num] if @cache.key?(num)
  return num if num < 2

  @cache[num] = fibonacci(num - 1) + fibonacci(num - 2)
  @cache[num]
end

puts fibonacci(10)
