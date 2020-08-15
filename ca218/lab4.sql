select f.title, f.release_year, c.name, f.description
from film as f join film_category as fc on f.film_id = fc.film_id join category as c on c.category_id = fc.category_id 
where f.rating = "G";

#01
#select f.title, f.release_year, c.name, f.description
#from film as f, category as c, film_category as fc
#where f.film_id = fc.film_id and fc.category_id = c.category_id and f.rating = "G";

select distinct cl.Language, ((c.Population / 100) * cl.Percentage) as total 
from CountryLanguage as cl, Country as c 
where c.Code = cl.CountryCode AND ((c.Population / 100) * cl.Percentage) > 1000000 
group by cl.Language order by ((c.Population / 100) * cl.Percentage) desc;


select distinct  c.first_name, c.last_name, amount from customer as c, payment as p where p.amount > (select max(p.amount) from payment as p, customer as c where p.customer_id = c.customer_id AND c.first_name = "Mary") AND c.customer_id = p.customer_id;
select distinct contactFirstName, first_name from customers as cs, sakila.customer as c where cs.contactFirstName = c.first_name;