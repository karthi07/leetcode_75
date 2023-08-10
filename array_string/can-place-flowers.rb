# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}

=begin
# Approach
 - loop over arr
    - check is_prev_slot_free and is_next_slot_free
    - if both available update bed and counter
    - return true if counter >= n
=end

def can_place_flowers(flowerbed, n)
    count = 0
    flowerbed.each.with_index { |slot, idx|
        if slot == 0
            is_prev_slot_free = (idx == 0) || (flowerbed[idx - 1] == 0)
            is_next_slot_free = (idx == flowerbed.length - 1) || (flowerbed[idx + 1] == 0)
        end

        if is_prev_slot_free && is_next_slot_free
            flowerbed[idx] = 1
            count += 1
            return true if count >= n
        end
    }
    return count >= n
end