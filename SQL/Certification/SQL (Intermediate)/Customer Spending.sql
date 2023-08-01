/*
List all customers who spent 25% or less than the average amount spent on all invoices. For each customer, display their name and the amount spent to 6 decimal places. Order the result by the amount spent from high to low.
*/
-- Solution
SELECT
    customer.customer_name,
    CAST(sum(invoice.total_price) AS NUMERIC(16,6)) AS total
FROM
    customer inner join invoice
ON  customer.id = invoice.customer_id
GROUP BY
    customer.customer_name
HAVING
    sum(invoice.total_price) < (SELECT 0.25*AVG(total_price) FROM invoice)
ORDER BY
    total DESC
