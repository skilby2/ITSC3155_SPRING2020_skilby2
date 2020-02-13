module FunWithStrings
  def palindrome?
    # your code here
    lower = self.downcase().gsub(/[\W]/, '')
    
    if lower == lower.reverse()
      true
    else
      false
    end
  end
  
  
  def count_words
    # your code here
    hash = Hash.new
    
    self.downcase().gsub(/[^a-z\s]/, '').split().each do |key|
      if hash[key] != nil
        hash[key] += 1
      else
        hash[key] = 1
      end
    end
    return hash
  end
  
  
  def anagram_groups
    # your code here
    arr = Array.new
    sentence = Array.new
    self.split().each do |word|
      sentence.push(word)
    end
    sentence.each do |word|
      if word.downcase().chars.sort().join() == word.downcase().chars.sort().join()
        arr.push(word)
      end
    end
    
    return arr
  end
  
end


# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

# [abc]	A single character of: a, b, or c
# [^abc]	Any single character except: a, b, or c
# [a-z]	Any single character in the range a-z
# [a-zA-Z]	Any single character in the range a-z or A-Z
# ^	Start of line
# $	End of line
# \A	Start of string
# \z	End of string

# .	Any single character
# \s	Any whitespace character
# \S	Any non-whitespace character
# \d	Any digit
# \D	Any non-digit
# \w	Any word character (letter, number, underscore)
# \W	Any non-word character
# \b	Any word boundary

# (...)	Capture everything enclosed
# (a|b)	a or b
# a?	Zero or one of a
# a*	Zero or more of a
# a+	One or more of a
# a{3}	Exactly 3 of a
# a{3,}	3 or more of a
# a{3,6}	Between 3 and 6 of a

# i case insensitive m make dot match newlines 
# x ignore whitespace in regex 
# o perform #{...} substitutions only once