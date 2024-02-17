WITH Top16Films AS (
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
    LIMIT 16
)

SELECT 
    a.actor_id,
    a.first_name || ' ' || a.last_name AS actor_name,
    COUNT(fa.film_id) AS num_films
FROM 
    public.film_actor fa
JOIN 
    public.actor a ON fa.actor_id = a.actor_id
JOIN 
    Top16Films t ON fa.film_id = t.film_id
GROUP BY 
    a.actor_id
ORDER BY 
    num_films DESC
LIMIT 1;