# 78. Subsets

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  (0..nums.length).inject([]) do |result, n|
    result.concat(nums.combination(n).to_a)
  end
end
```