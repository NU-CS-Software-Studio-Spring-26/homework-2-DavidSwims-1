# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) { |sum, x| sum + x }
end

def max_2_sum arr
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    sorted = arr.sort
    result = sorted[-1] + sorted[-2]
  end    
end

def sum_to_n? arr, n
  if arr.empty? || arr.length == 1
    return false
  end

  arr.each_with_index do |x, i|
    arr.each_with_index do |y, j|
      if x + y == n && i != j
        return true
      end
    end
  end

  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.nil? || s.empty?
  s[0] =~ /[^aeiou]/i && s[0] =~ /[a-zA-Z]/
end

def binary_multiple_of_4? s
  s =~ /^[01]+$/ && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price 
  def initialize(isbn, price)
    raise ArgumentError, "isbn is empty" if isbn.empty?
    raise ArgumentError, "invalid price" if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end

end
