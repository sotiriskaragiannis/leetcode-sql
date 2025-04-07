-- https://leetcode.com/problems/immediate-food-delivery-ii/description

SELECT ROUND((COUNT(CASE WHEN D1.order_date = D1.customer_pref_delivery_date THEN delivery_id END) / COUNT(delivery_id)) * 100,2) as immediate_percentage
FROM Delivery D1
WHERE (D1.customer_id, D1.order_date) IN
    (SELECT customer_id, MIN(order_date) FROM Delivery D2 WHERE D2.customer_id = D1.customer_id );
