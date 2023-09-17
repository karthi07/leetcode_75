# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  equal_pairs = 0
  row_count = grid.tally

  grid.transpose.each { |col|
    equal_pairs += row_count[col] if row_count.keys.include?(col)
  }
  equal_pairs
end

=begin
Approach
  - loop over rows and store thier occurance at hash map || or can use .tally
  - transpose the matrix to loop over cols
  - if the col is present in the hash, add the occurance count to result
=end