with
    top16films as (
        select f.film_id, f.title, count(r.rental_id) as num_rentals
        from public.film f
        join public.inventory i on f.film_id = i.film_id
        join public.rental r on i.inventory_id = r.inventory_id
        group by f.film_id
        order by num_rentals desc
        limit 16
    )

select
    a.actor_id,
    a.first_name || ' ' || a.last_name as actor_name,
    count(fa.film_id) as num_films
from public.film_actor fa
join public.actor a on fa.actor_id = a.actor_id
join top16films t on fa.film_id = t.film_id
group by a.actor_id, a.first_name, a.last_name
order by num_films desc
limit 1
;

#actor_id |    actor_name     | num_films 
#----------+-------------------+-----------
#      111 | Cameron Zellweger |         3
