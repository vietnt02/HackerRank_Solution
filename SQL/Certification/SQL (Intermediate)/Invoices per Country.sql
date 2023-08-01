/*
A business is analyzing data by country. For each country, display the country name, total number of invoices, and their average amount. Format the average as a floating-point number with 6 decimal places. Return only those countries where their average invoice amount is greater than the average invoice amount over all invoices.
*/
-- Solution
SELECT 
    country.country_name,
    count(*),
    CAST(AVG(invoice.total_price) AS NUMERIC(12,6))
FROM
    COUNTRY INNER JOIN CITY
ON  COUNTRY.id = city.country_id INNER JOIN CUSTOMER
ON  CITY.id = CUSTOMER.city_id INNER JOIN invoice
ON  customer.id = invoice.customer_id
GROUP BY
    country.country_name
HAVING
    AVG(invoice.total_price) > (SELECT AVG(total_price) FROM invoice)
