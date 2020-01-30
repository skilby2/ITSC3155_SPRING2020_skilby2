# Lab 1
# Part I
def sum arr
  # YOUR CODE HERE
  arr.sum
end

# Part II
def max_2_sum arr
  # YOUR CODE HERE
  if (arr.length() == 0)
    return 0
  elsif (arr.length() == 1)
    return arr[0];
  else
    num1 = 0
    num2 = -9999999
    not2 = 0
    arr.sort
    for i in (0...arr.length())
      if arr[i] > num1
        num1 = arr[i]
        not2 = i
      end
    end
    arr.delete_at(not2)  
    for i in (0...arr.length())
      if arr[i] > num2
        num2 = arr[i]
      end
    end
    return num1 + num2
  end
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
end