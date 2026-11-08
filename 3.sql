SELECT u.name, COALESCE(SUM(o.price), 0) AS sum_price
FROM users AS u
LEFT JOIN orders AS o ON u.id = o.user_id
GROUP BY u.name
ORDER BY sum_price DESC