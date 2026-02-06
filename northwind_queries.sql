/*
Date: 6/2/2026
Author: Nguyen Ngoc Minh Thu
IRN: 2232300163
Email: thu.n.bbs22@eiu.edu.vn
*/


-- Question 1: Show all products that cost more than $20

SELECT product_id, product_name as products_price_more_than_20, unit_price 
from products
where unit_price > 20;

-- Question 2
-- Display the Order ID, Customer Company Name, and Order Date
-- This query joins the orders and customers tables using the customer_id foreign key

SELECT
    o.order_id,
    c.company_name,
    o.order_date
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id;


SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 3;