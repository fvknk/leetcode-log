# 1108. Defanging an IP Address

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
# @param {String} address
# @return {String}
def defang_i_paddr(address)
  address.gsub('.', '[.]')
end
```