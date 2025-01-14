# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  (0..nums.length).inject([]) do |result, n|
    result.concat(nums.combination(n).to_a)
  end
end
