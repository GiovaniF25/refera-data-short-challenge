select
    extract(month from min(rental.rental_date)) as month,
    count(distinct customer.customer_id) as new_customers
from customer
join rental on customer.customer_id = rental.customer_id
group by extract(month from rental.rental_date)
order by month
;


#month | new_customers 
#-------+---------------
#     2 |           158
#     5 |           520
#     6 |           590
#     7 |           599
#     8 |           599
