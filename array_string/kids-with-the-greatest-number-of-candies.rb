#https://leetcode.com/problems/kids-with-the-greatest-number-of-candies

# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}

# approach
# - loop over and check if sum exceeds max value


def kids_with_candies(candies, extra_candies)

    res = Array.new(candies.length, false)

    maxCandies = candies.max

    candies.each.with_index{ |count, idx |  res[ idx ] = true if count + extra_candies >= maxCandies }
    res
end