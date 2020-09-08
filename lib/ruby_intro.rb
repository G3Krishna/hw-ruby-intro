# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  max=arr.max(2)
  len=arr.length()
  if len==0
    return 0
  elsif len==1
    return max[0]
  else
    sum=max[0]+max[1]
  end 
end
    
  
def sum_to_n? arr, n
  # YOUR CODE HERE
  len=arr.length()
  flag=0
  if len > 2
    for i in 0..len-1 do
      if n>arr[i]
        d1= n-arr[i]
      else
        d1=arr[i]-n
      end
      if arr.include?(d1) and arr.index(d1)!=i
        flag=1
        return true
      end
    end
  end
  if flag==0
    return false
  end
end
# Part 2

def hello(name)
  # YOUR CODE HERE
   return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length==0
      return nil
  elsif s[0].match(/[qwrtypsdfghjklzxcvbnmQWTYPSDFGHJKLZXCVBNM]/)
      return true
  else
      return false
  end 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length==0
    return false
  elsif s.length==1
    if s.eql?("0")
        return true
    else
        return false
    end
  else
    if s.match(/[^0-1]/)
        return false
    else
        if Integer(s)%4==0
          return true
        end
    end
  end
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn, :price

  def initialize isbn, price
     if isbn.length==0 || price <= 0
          raise ArgumentError
     else
        @isbn = isbn
        @price = price
     end
  end
  def price_as_string
        format("$%.2f", @price)
  end
end
