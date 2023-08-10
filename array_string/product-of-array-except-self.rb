# @param {Integer[]} nums
# @return {Integer[]}
=begin
approach 1 - brute force
 - for loop
  - for loop - reject current calc

approach 2 - use prefix and suffix array

approach 3 - const space
 - run loop to calc curr[idx - 1] * prev[idx-1] and store at res
 - use const variable - suffix prd (update them as we move left to right)
 - loop from left to right, calc prd * suff | suff = sufix * num[i]]

=end
def product_except_self(nums)
    arr_len = nums.length
    res = Array.new(arr_len, 1)
    # Brute force
    # nums.each.with_index { |num1, idx1|
    #     curr_prd = 1
    #     nums.each.with_index { |num2, idx2|
    #         curr_prd *= num2 if idx2 != idx1
    #     }
    #     res[idx1] = curr_prd
    # }
    # res

    # prefix suffix array
    # prefix = Array.new(arr_len,1)
    # suffix = Array.new(arr_len,1)

    # prefix[0] = 1
    # 1.upto(arr_len - 1) { |idx|
    #     prefix[idx] = nums[idx - 1] * prefix[idx - 1]
    # }

    # suffix[arr_len - 1] = 1
    # (arr_len - 2).downto(0) { |idx|
    #     suffix[idx] = nums[idx + 1] * suffix[idx + 1]
    # }

    # 0.upto(arr_len - 1) { |idx|
    #     res[idx] = prefix[idx] * suffix[idx]
    # }

    # const approach

    res[0] = 1
    1.upto(arr_len - 1 ){ |idx|
        res[idx] = res[idx - 1] * nums[idx - 1]
    }
    suff_prd = 1
    (arr_len - 1).downto(0) { |idx|
        res[idx] *= suff_prd
        suff_prd *= nums[ idx ] 
    }

    res
end