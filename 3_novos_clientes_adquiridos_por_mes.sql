SELECT
    EXTRACT(MONTH FROM MIN(rental.rental_date)) AS month,
    COUNT(DISTINCT customer.customer_id) AS new_customers
FROM
    customer
JOIN
    rental ON customer.customer_id = rental.customer_id
GROUP BY
    EXTRACT(MONTH FROM rental.rental_date)
ORDER BY
    month;