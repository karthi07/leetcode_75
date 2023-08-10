# @param {String} s
# @return {String}

=begin
 approach 1
  - convert into list using split
  - reverse the array 
=end

def reverse_words(s)
    s.split(' ').reverse.join(' ')
end