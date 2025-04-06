-- https://leetcode.com/problems/product-sales-analysis-i/description/

SELECT product_name, year, price
FROM Sales JOIN Product ON  Sales.product_id = Product.product_id;
