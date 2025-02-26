SELECT
  m.employee_id,
  m.name,
  COUNT(e.employee_id) AS reports_count,
  ROUND(AVG(e.age), 0) AS average_age
FROM
  Employees e
  JOIN Employees m ON m.employee_id = e.reports_to
GROUP BY
  m.employee_id
ORDER BY
  m.employee_id;
