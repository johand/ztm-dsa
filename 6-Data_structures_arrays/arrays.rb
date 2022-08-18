# frozen_string_literal: true

strings = %w[a b c d]

# lookup
puts strings[2] # => O(1)

# push
strings.push('e') # => O(1)

# pop
strings.pop # => O(1)

# unshift
strings.unshift('x') # => O(n)

# insert
strings.insert(2, 'alien') # => O(n)

p strings
