# 100. Same Tree

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
# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return false unless p&.val === q&.val
  return p&.val === q&.val if p&.left.nil? && p&.right.nil? && q&.left.nil? && q&.right.nil?

  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end
```
