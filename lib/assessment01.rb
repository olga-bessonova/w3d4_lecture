class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  def my_inject(accumulator = nil, &prc)
    # arr = self
    # if accumulator == nil
    #   accumulator = self[0]
    #   arr = self[1..-1]
    # end
    # arr.each do |el|
    #   accumulator = prc.call(accumulator,el)
    # end
    # accumulator
      if accumulator == nil
        
      accumulator = self[0]
      (1...self.length).each do |i|
        accumulator = prc.call(accumulator,self[i])
      end
    else
      (0...self.length).each do |i|
        accumulator = prc.call(accumulator,self[i])

      end
    end
    return accumulator
  
  end


end

# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.

def is_prime?(num)
  return false if num < 2
  return true if num == 2
  #res = []
  (2...num).each do |el|
   if num % el == 0
     return false
   end
 end
 true
 end

def primes(num)
  res = []
  digit = 1

  while res.length < num
    if is_prime?(digit)
      res << digit
    end
    digit += 1
  end
  return res

end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1
  prev = factorials_rec(num-1)
  #p prev
  prev << (num-1) * prev[-1]
  #num * factorials_rec(num-1)

end

class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    hash = Hash.new {|h,k| h[k] = []}
    self.each_with_index do |el,i|
      hash[el] <<  i
    end
    hash.select {|k,v| v.length > 1}
  end
end

class String
  # Write a `String#symmetric_substrings` method that returns an array of 
  # substrings that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
  end
end

class Array
  # Write an `Array#merge_sort` method; it should not modify the original array.
  # **Do NOT use the built in `Array#sort` or `Array#sort_by` methods in your 
  # implementation.**
  
  def merge_sort(&prc)
    #prc ||= Proc.new { |a, b| a <=> b }
    Array.merge([1,2], [3,4], &prc)
    #prc.call([1], [2])
  end

  private
  def self.merge(left, right, &prc)
  end
end
