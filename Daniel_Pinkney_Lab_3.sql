-- Lab 3
use sakila;

-- Task 1:
select count(distinct concat(first_name, " ",last_name)) as "Number of actors with different names" from actor;

-- Task 2:
select  count( distinct language_id) as  "number of different languages" from film;

-- Task 3:
select count(language_id) as "number of original languages" from film
where  language_id = original_language_id;

-- Task 4:
select * from film
where release_year = 2006
order by length desc
limit 10;

-- Task 5:
select datediff(max(rental_date), min(rental_date)) from rental;

-- Task 6:
select rental_id, date_format(rental_date, "%M") as "Month",
case dayofweek(rental_date)
	when 1 then "Monday"
	when 2 then "Tuesday"
	when 3 then "Wednesday"
	when 4 then "Thursday"
	when 5 then "Friday"
	when 6 then "Saturday"
	else "Sunday"
end as "Day"
from rental;

-- Task 7:
select rental_id, date_format(rental_date, "%M") as "Month",
case dayofweek(rental_date)
	when 6 then "Saturday"
    when 7 then "Sunday"
	else "weekday"
end as day_type
from rental;

-- Task 8:
select count(*) from rental
where datediff(last_update, rental_date) < 30



