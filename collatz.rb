# The following iterative sequence is defined for the set of positive integers:
 
# n ->n/2 (n is even) n ->3n + 1 (n is odd)
 
# Using the rule above and starting with 13, we generate the following sequence:
 
# 13 40 20 10 5 16 8 4 2 1 It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
 
# Which starting number, under one million, produces the longest chain?
def longest_chain_given(given_number)
  winning_number = 0
  largest_chain_size = 0
  current_chain_size = 0
  (2...given_number).each do |i|
    current_chain_size = chain_size_of(i)
    if current_chain_size > largest_chain_size
      largest_chain_size = chain_size_of(i)
      winning_number = i
    end
    puts "Current number: #{i}. Size: #{current_chain_size}"
  end
  puts "Winning number is #{winning_number} with size of #{largest_chain_size}."
  winning_number
end

def chain_size_of(number)
  return 0 if number < 1
  chain_size = 1
  until number == 1
    if number.even?
      number /= 2
    elsif number.odd?
      number = 3*number + 1
    end
    chain_size += 1
  end
  chain_size
end

puts longest_chain_given(1000000)