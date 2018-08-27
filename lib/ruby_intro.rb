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
  'Hello, ' + name
end

def starts_with_consonant? s
  s =~ /^[[:ascii:]&&[:alpha:]&&[^AEIOUaeiou]]/ ? true : false
end

def binary_multiple_of_4? s
  s =~ /^(?:0+|(?:[01]+00))$/ ? true : false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    '$%.2f' % @price
  end
end
