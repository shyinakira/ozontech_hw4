SELECT name
FROM users
WHERE age = (SELECT max(age) FROM users)