# Write your MySQL query statement below
SELECT product_id, ROUND(SUM(p.price*u.units)/SUM(u.units),2) AS average_price
FROM Prices AS p
LEFT JOIN UnitsSold AS u
USING (product_id)
WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id