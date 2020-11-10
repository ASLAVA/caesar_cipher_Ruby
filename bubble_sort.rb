# frozen_string_literal: true

def bubble_sort(input)
  n = input.length
  sorted = false
  until sorted || n == 1
    shifted = false
    (0...n).each do |i|
      next if i.zero?

      next unless input[i] < input[i - 1]

      temp = input[i]
      input[i] = input[i - 1]
      input[i - 1] = temp
      shifted = true
    end
    sorted = true unless shifted
    n -= 1
  end
  puts input
end

bubble_sort([4, 3, 78, 2, 0, 2, 3, 33, 15, 16, 15, 18, 2])
