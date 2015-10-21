#Matt Fina
#SELT
#Prof. Kuhl
#HW 1

# Part 1

def sum arr
  if arr.length == 0
    return 0
  end
  x=0
  for i in arr
    x = x + i
  end
  return x
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr. length == 1
    return arr[0]
  else
   largest=arr.max
   second=-10000
   firstMax=0
   for i in arr
     if second < i
       if largest != i
         second = i
       else
        firstMax = firstMax + 1
        if firstMax == 2
          second = i
        end
       end
     end
   end
   return largest+second
  end
end


def sum_to_n? arr, n
  if arr.length == 0 && n == 0
    return false
  end
  i=0
  j=0
  while i < arr.length
    while j < arr.length
      if ((arr[i] + arr[j]) == n) && (i != j)
        return true
      end
      j = j + 1
    end
    i = i + 1
    j=0
  end
  return false
end

# Part 2

def hello(name)
  greeting = "Hello, " + name
  return greeting 
end

def starts_with_consonant? s
  if s == ''
    return false
  end
  regex = /^[a-zA-Z]/
  if regex =~ s
    regex = /^[aeiouAEIOU]/
    return !(regex =~ s)
  else
    return false
  end
end

def binary_multiple_of_4? s
  regex = /[a-zA-Z]/
  if regex =~ s || s == ''
    return false
  end
  num = s.to_i(2)
  if num % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def isbn
    @isbn
  end
  
  def isbn=(newisbn)
    @isbn = newisbn
  end
  
  def price
    @price
  end
  
  def price=(newprice)
    @price=newprice
  end
  
  def price_as_string
    reg = /(\d*\.{1}\d\d)/
    
    if (price).to_s.include? "."
      if reg =~ price.to_s
        return "$" + price.to_s
      else
        return "$" + price.to_s + "0"
      end
    else
      return "$" + price.to_s + ".00"
    end
  end
end
