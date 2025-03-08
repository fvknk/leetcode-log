WITH
  MultiLogin AS (
    SELECT
      player_id,
      MIN(event_date) AS event_date
    FROM
      Activity
    GROUP BY
      player_id
    HAVING
      COUNT(*) >= 2
  )
SELECT
  ROUND(
    COUNT(DISTINCT ml.player_id) / COUNT(DISTINCT a.player_id),
    2
  ) AS fraction
FROM
  Activity a
  LEFT JOIN MultiLogin ml ON a.player_id = ml.player_id
  AND a.event_date = DATE_ADD(ml.event_date, INTERVAL 1 DAY);
