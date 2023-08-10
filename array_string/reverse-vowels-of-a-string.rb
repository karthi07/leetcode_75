# @param {String} s
# @return {String}

=begin

approach
 - use two pointers | start and end_idx
 - loop till you find start and end_idx of vowels
 - interchange start and end_idx vowels

=end
def reverse_vowels(s)
    def is_vowel(char)
        ['a', 'e', 'i', 'o', 'u'].include?(char.downcase)
    end
    res = s
    start_idx = 0
    end_idx = s.length - 1

    while start_idx < end_idx
        while start_idx < s.length && !is_vowel(res[start_idx])
            start_idx += 1
        end

        while end_idx >= 0 && !is_vowel(res[end_idx])
            end_idx -= 1
        end

        if (start_idx < end_idx)
            res[start_idx], res[end_idx] = res[end_idx], res[start_idx]
            start_idx += 1
            end_idx -=1
        end

    end
    res
end
