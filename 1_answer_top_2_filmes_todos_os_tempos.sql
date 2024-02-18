select f.film_id, f.title, count(r.rental_id) as num_rentals
from public.film f
join public.inventory i on f.film_id = i.film_id
join public.rental r on i.inventory_id = r.inventory_id
group by f.film_id
order by num_rentals desc
limit 2
;

# film_id |       title        | num_rentals 
#---------+--------------------+-------------
#     103 | Bucket Brotherhood |          34
#     738 | Rocketeer Mother   |          33
