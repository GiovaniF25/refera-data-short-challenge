SELECT 
    f.film_id,
    f.title,
    COUNT(r.rental_id) AS num_rentals
FROM 
    public.film f
JOIN 
    public.inventory i ON f.film_id = i.film_id
JOIN 
    public.rental r ON i.inventory_id = r.inventory_id
GROUP BY 
    f.film_id
ORDER BY 
    num_rentals DESC
LIMIT 2;