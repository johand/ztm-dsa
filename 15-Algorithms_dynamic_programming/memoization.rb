# frozen_string_literal: true

def add_to80(num)
  num + 80
end

@cache = {}

def memoized(num)
  return @cache[num] if @cache.key?(num)

  puts 'long time'
  @cache[num] = num + 80
end

puts memoized(6)
puts memoized(6)
