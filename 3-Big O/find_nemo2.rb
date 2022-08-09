# frozen_string_literal: true

def find_nemo(arr)
  t0 = Process.clock_gettime(Process::CLOCK_MONOTONIC)

  arr.each_with_index do |_item, index|
    puts 'Found NEMO!' if arr[index] == 'nemo'
  end

  t1 = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  puts "Call to find Nemo took #{(t1 - t0) * 1000} Milliseconds"
end

nemo = ['nemo']
everyone = %w[dory bruce marlin nemo gill bloat nigel squirt darla hank]
large = Array.new(100_000, 'nemo')

find_nemo(large)
