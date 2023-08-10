## LeetCode 75

Ace Coding Interview with 75 Qs


## Week 1 

**Array / String**

1. [merge String Alternatively](https://leetcode.com/problems/merge-strings-alternately/)
    - loop over max str and add str[idx] from both strings
2. [greatest-common-divisor-of-strings](https://leetcode.com/problems/greatest-common-divisor-of-strings/)
    - get GCD of the str lengths and return subset
3. [kids-with-the-greatest-number-of-candies](https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/)
    - loop over and check if sum exceeds max value
4. [can-place-flowers](https://leetcode.com/problems/can-place-flowers/)
    - loop over arr -> check is_prev_slot_free and is_next_slot_free -> if both available update bed and counter
5. [reverse-vowels-of-a-string](https://leetcode.com/problems/reverse-vowels-of-a-string)
    - use two pointer -> start_idx and end_idx -> loop till you find vowel -> exchange the position of start and end vowel
6. [reverse-words-in-a-string](https://leetcode.com/problems/reverse-words-in-a-string)
    - split str and reverse
7. [product-of-array-except-self](https://leetcode.com/problems/product-of-array-except-self)
    - calc prefix and suffix product array, res[i] = prefix[i] * suffix[i]


**Two Pointers**

1. [move-zeroes](https://leetcode.com/problems/move-zeroes)
    - use two pointers left (calc zero) and right -> shuffle left and right when i is non-zero
2. [is-subsequence](https://leetcode.com/problems/is-subsequence)
    - ptr to track the matching char, retrun true if ptr == substr.length