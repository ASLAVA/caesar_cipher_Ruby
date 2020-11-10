# frozen_string_literal: true

def caesar_cipher(input, shift = 0)
  return_val = ''
  return_str = ''
  input.each_byte do |x|
    return_val = x + shift
    # if for capitals
    if x > 64 && x < 91
      return_val = return_val % 90 + 64 if return_val > 90
      return_str += return_val.chr
    elsif x > 96 && x < 123
      return_val = return_val % 122 + 96 if return_val > 122
      return_str += return_val.chr
    else
      return_str += x.chr
    end

    # puts return_val
    # puts return_val.chr
  end
  puts return_str
end

caesar_cipher('ABC abc #_ zZ', 2)
