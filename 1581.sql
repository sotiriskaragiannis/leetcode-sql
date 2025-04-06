-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/

SELECT customer_id, COUNT(customer_id) as count_no_trans
FROM Visits LEFT OUTER JOIN Transactions ON Visits.visit_id=Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;
