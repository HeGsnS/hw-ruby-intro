# When done, submit this entire file to the autograder.

# Part 1

def sum arr

  x_sum = 0
    for x in arr
        x_sum = x_sum + x
    end
  return x_sum

end

def max_2_sum arr

    if arr.length == 0
        return 0
    elsif arr.length == 1
        return arr[0]
    else
        x1 = arr[0]
        x2 = arr[1]

        if x2 > x1
            tmp = x1
            x1 = x2
            x2 = tmp
        end

        for x in arr[2..arr.length]
            if x > x2 and x <= x1
                x2 = x
            elsif x > x2 and x > x1
                x2 = x1
                x1 = x
            end
        end
        return x1 + x2
    end

end

def sum_to_n? arr, n

    if arr.length == 0 or arr.length == 1
        return false
    end

    if arr.length == 2
        if arr[0] + arr[1] == n
            return true
        else
            return false
        end
    end

    x0 = arr[0]
    for x in arr[1..arr.length]
        if x0 + x == n
            return true
        end
    end

    return sum_to_n?(arr[1..arr.length], n)

end

# Part 2

def hello(name)

    return "Hello, " + name

end

def starts_with_consonant? s

    if s.length == 0
        return false
    end

    if s[0] < 'A' or (s[0] > 'Z' and s[0] < 'a') or s[0] > 'z'
        return false
    elsif ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include? s[0]
        return false
    end

    return true

end

def binary_multiple_of_4? s

    for idx in 0..s.length-1
        x = s[idx]
        if x != '0' and x != '1'
            return false
        end
    end

    if s[s.length-1] == '0' and s[s.length-2] == '0'
        return true
    else
        return false
    end

end

# Part 3

class BookInStock

    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)

        if isbn.class != String or isbn.length == 0
            raise ArgumentError, "Wrong isbn format."
        end
        if  price <= 0
            raise ArgumentError, "The price should be positive."
        end

        @isbn = isbn
        @price = price
    end

    def price_as_string()
        return "$%.2f" % @price
    end

end
