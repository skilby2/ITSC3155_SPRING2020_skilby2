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
  
  if (arr.length == 0)
    return false
  end
  if (arr.length == 1)
    return false
  end
  sorted_arr = arr.sort
  head =0
  tail = sorted_arr.length-1
  
  while head < tail 
    current_sum = sorted_arr[head] + sorted_arr[tail]
    if current_sum == n
      return true
    elsif current_sum < n
      head = head + 1
    else 
      tail = tail - 1
    end
  end
  return false
end
