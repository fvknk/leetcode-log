SELECT
  product_name,
  SUM(unit) AS unit
FROM
  Products p
  JOIN Orders o USING (product_id)
WHERE
  order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY
  p.product_id
HAVING
  SUM(unit) >= 100;
