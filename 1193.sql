-- https://leetcode.com/problems/monthly-transactions-i/description

SELECT
    SUBSTRING(trans_date, 1, 7) as month,
    country,
    COUNT(id) as trans_count,
    COUNT(CASE WHEN state='approved' THEN id END) as approved_count,
    SUM(amount) as trans_total_amount,
    SUM(CASE WHEN state='approved' THEN amount ELSE 0 END) as approved_total_amount
FROM Transactions
GROUP BY month, country;
