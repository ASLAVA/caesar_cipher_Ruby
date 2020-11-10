# frozen_string_literal: true

def substrings(input_arr, dict)
  search = Hash.new(0)
  list = input_arr.split(/\.?\W+/)
  # list.each { |x| puts x }
  list.each do |input|
    dict.each do |word|
      input.downcase.to_s.include?(word.to_s) ? search[word.to_sym] = search[word.to_sym] + 1 : 'Miss'
    end
  end
  puts search
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
