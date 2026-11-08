SELECT item, price
FROM orders
WHERE price = (SELECT MIN(price)
				FROM (
					SELECT item, price
					FROM orders
					WHERE price > 10000
				)
			)
