# Write a function to reverse an array of characters in place.
# "In place" means "without creating a new string in memory."

def reverse(str)
  puts "Your string: #{str}"
  length = str.length
  current_char_index = 0
  mirror_char_index = str.length - 1

  until (current_char_index == mirror_char_index) || (mirror_char_index - current_char_index == 1)
    # set current and mirror chars
    current_char = str[current_char_index]
    mirror_char = str[mirror_char_index]

    # switch
    str[current_char_index] = mirror_char
    str[mirror_char_index] = current_char

    # increment and set next indices
    current_char_index += 1
    mirror_char_index = length - (current_char_index + 1)
  end

  puts "Reversed string: #{str}"
  str
end

def reverse_refactored(string)
  left_ptr = 0
  right_ptr = string.length - 1
    while left_ptr < right_ptr
      # swap
      temp = string[left_ptr]
      string[left_ptr] = string[right_ptr]
      string[right_ptr] = temp
      
      # step towards middle
      left_ptr += 1
      right_ptr -= 1
    end
  string
end

str5 = "abcde"
str8 = "abcdefgh"

puts reverse_refactored(str5)
puts reverse(str8)