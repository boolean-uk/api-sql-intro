-- READ
SELECT * FROM products

SELECT name, price_pence
FROM products
WHERE is_discounted = false
AND price_pence < 100
ORDER BY price_pence ASC
LIMIT 5