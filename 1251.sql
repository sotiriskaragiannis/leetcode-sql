-- https://leetcode.com/problems/average-selling-price/description/

SELECT Prices.product_id, IF(SUM(price*units) IS NULL, 0, ROUND(SUM(price * units) / SUM(units), 2)) as average_price
FROM Prices LEFT OUTER JOIN UnitsSold
ON (Prices.product_id=UnitsSold.product_id AND start_date<=purchase_date AND purchase_date<=end_date) OR  UnitsSold.product_id IS NULL
GROUP BY Prices.product_id;
