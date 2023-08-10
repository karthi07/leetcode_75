# @param {String} s
# @param {String} t
# @return {Boolean}

=begin

Approach
- maintain pointer to note number of matching char
- if pointer size == size(s) return true

=end

def is_subsequence(s, t)
    return true if s == t
    ptr = 0    

    t.each_char.with_index { |char, idx|
        ptr += 1 if char == s[ptr]
        break if ptr > s.length
        return true if ptr == s.length        
    }
    false
end