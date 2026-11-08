SELECT city, count(1)
FROM users
GROUP BY city
HAVING count(1) > 1
ORDER BY count(1) DESC