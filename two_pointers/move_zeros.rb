# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.

#Input: nums = [0,1,0,3,12]
#Output: [1,3,12,0,0]

# Approach
# - use two pointers left (calc zero) and right
# - shuffle when nums[i] is non-zero
# Reference
# https://www.youtube.com/watch?v=aayNRwUN3Do

def move_zeroes(nums)
    l_idx = 0
    nums.each.with_index{ |num, r_idx| 
        if num != 0
            nums[l_idx], nums[r_idx] = nums[r_idx], nums[l_idx]
            l_idx += 1
        end
    }
    nums
end