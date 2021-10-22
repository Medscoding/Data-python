 select actor_id, first_name, last_name
from actor
order by last_name, first_name;

select actor_id, first_name, last_name
from actor
where last_name = 'WILLIAMS' OR 'DAVIS';

SELECT customer_id
from rental
where date(rental_date) = '2005-06-05'
order by customer_id;

select email, return_date
from customer c
 inner join rental r
 on c.customer_id = r.customer_id
 where date(r.rental_date) = '2005-06-14'
 order by c.first_name, c.email;