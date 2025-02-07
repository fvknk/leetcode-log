# 1581. Customer Who Visited but Did Not Make Any Transactions

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```sql
SELECT
  v.customer_id,
  COUNT(v.customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
  ON v.visit_id = t.visit_id
WHERE
  t.transaction_id IS NULL
GROUP BY v.customer_id
;
```
