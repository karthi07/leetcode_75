=begin
For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

 

Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"
Example 3:

Input: str1 = "LEET", str2 = "CODE"
Output: ""
 

Constraints:

1 <= str1.length, str2.length <= 1000
str1 and str2 consist of English uppercase letters.
=end

# @param {String} str1
# @param {String} str2
# @return {String}


def gcd_of_strings(str1, str2)
    len_a = str1.length
    len_b = str2.length

    return "" if str1 + str2 != str2 + str1      

    gcd_len = len_a.gcd(len_b)
    return str1.slice(0, gcd_len)
end

=begin
Algorithm
1. Check if the concatenations of str1 and str2 in different orders are the same.
    If not, return "".
2. Get the GCD gcdLength of the two lengths of str1 and str2.

3.Return the prefix string with a length of gcdLength of either str1 or str2 as the answer.

=end