# 1174. Immediate Food Delivery II

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
  ROUND(
    AVG(
      first_delivery.first_order_date = d.customer_pref_delivery_date
    ) * 100,
    2
  ) AS immediate_percentage
FROM
  Delivery d
  JOIN (
    SELECT
      customer_id,
      MIN(order_date) AS first_order_date
    FROM
      Delivery
    GROUP BY
      customer_id
  ) first_delivery ON first_delivery.customer_id = d.customer_id
  AND first_delivery.first_order_date = d.order_date;
```
