# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  # Find the two largest integers in the array
  biggest = nil
  second_biggest = nil
  for i in arr
    if biggest == nil or biggest <= i
      second_biggest = biggest
      biggest = i
    elsif second_biggest == nil or second_biggest < i
      second_biggest = i
    end
  end
  
  # Handle the situations of having 0 or 1 element in the array
  if biggest == nil
    return 0
  elsif second_biggest == nil
    return biggest
  end
  
  return biggest + second_biggest
end

def sum_to_n? arr, n
  arr.combination(2) { |c|
    return true if c[0] + c[1] == n
  }
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
