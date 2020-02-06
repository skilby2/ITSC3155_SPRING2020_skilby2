# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  #return a value in methods
  return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
  # \W not a word character
  # /begin expression /close expression
  # ^ not
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end # end of if/else statement
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
end
