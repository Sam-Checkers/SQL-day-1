--How many actors are there with the last name 'Wahlberg'? 2
select last_name
from actor
where last_name like 'Wahlberg';

-- How many payments were made between $3.99 and $5.99? 0
select customer_id, amount
from payment
where amount between 3.99 and 5.99;

-- What film does the store have the most of? Crossroad Casualties
select film_id, count(*)
from inventory
GROUP BY film_id
order by count desc;


--How many customers have the last name 'William'? 0
select last_name
from customer
where last_name like 'William';

--What store employee sold the most rentals? 2
select staff_id, sum(staff_id)
from rental
group by staff_id
order by sum(staff_id) desc;

--How many different district names are there? 603

select count(district)
from address;

-- What film has the most actors in it? Crazy Home
select film_id, sum(actor_id)
from film_actor
group by film_id
order by sum(actor_id) desc;

-- From store_id 1, how many customers have a last name ending with 'es'? 13
select last_name, store_id
from customer
where last_name like '%es'
order by store_id asc;

-- How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430? 0
select customer_id, amount
from payment
where amount >250.00 and (customer_id between 380 and 430);

-- Within the film table, how many rating categories are there? 5     What rating has the most movies total? PG-13
select rating, count(rating)
from film
group by rating
order by count desc;