# frozen_string_literal: true

def add_to80(num)
  num + 80
end

def memoized(num)
  @cache ||= {}
  return @cache[num] if @cache.key?(num)

  @cache.fetch(num) do |k|
    puts 'long time'
    @cache[k] = k + 80
  end
end

puts memoized(6)
puts memoized(6)
