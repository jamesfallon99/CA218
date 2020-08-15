select c.Name AS city, co.Name as Country
from City as c, Country as co
where c.CountryCode = co.Code and c.Name like 'A%';

select co.Name, cl.Language 
from Country as co, CountryLanguage as cl
where percentage = (select max(Percentage) from CountryLanguage as x where x.CountryCode = cl.CountryCode) 
and cl.CountryCode = co.Code group by cl.CountryCode;

select f.film_id, f.title, f.release_year
from film as f left join film_actor as fa on fa.film_id = f.film_id where fa.actor_id is NULL;

select f.title, f.release_year, c.name
from film as f, category as c, film_category as fc
where c.category_id = fc.category_id and f.film_id = fc.film_id and f.description like '%Moose%';




select distinct c.contactFirstName, s.first_name
from customers as c, sakila.customer as s
where s.first_name = c.contactFirstName;





select pl.productLine, pl.textDescription, count(od.quantityOrdered)
from productlines as pl, orderdetails as od, products as p
where p.productLine = pl.productLine and od.productCode = p.productCode
group by pl.productLine order by count(od.quantityOrdered) desc limit 3;


#classicmodels
select distinct cs.customerName, sum(p.amount), 'sakila' as 'label'
from customers as cs, payments as p
where cs.customerNumber = p.customerNumber
group by cs.customerName
union all
#sakila
select distinct c.first_name, p.amount, 'classicmodels73' as 'label'
from sakila.customer as c, sakila.payment as p
where p.customer_id = c.customer_id
group by c.first_name;


select p.productLine, sum((od.priceEach - p.buyPrice) * od.quantityOrdered) as total
from orderdetails as od, products as p
where od.productCode = p.productCode
group by p.productline limit 1;

select p.productLine, sum((od.priceEach - p.buyPrice) * od.quantityOrdered) as income 
from products as p, orderdetails as od 
where p.productCode = od.productCode group by p.productLine limit 1;

select last_name from actor where first_name like '%ADAM%';

select f.title, c.name 
from film as f, category as c, film_category as fc
where f.film_id = fc.film_id and c.category_id = fc.category_id
and f.title like 'A%';

select co.Name as country, c.Name, ((c.Population / co.Population) * 100)
from Country as co, City as c
where co.Code = c.CountryCode and co.LifeExpectancy > 75
order by ((c.Population / co.Population) * 100) desc;

select distinct co.Name, co.Population, (select count(Language) from CountryLanguage as x where x.CountryCode = cl.CountryCode) as languages
from Country as co, CountryLanguage as cl
where co.Code = cl.CountryCode and co.Population > (select avg(co.Population) from Country as co);



#sample exam q3-not complete
select p.productName
from products as p, orderdetails as od
where od.productCode = p.productCode and sum(od.quantityOrdered) > (select od.quantityOrdered from orderdetails as od, products as p where p.productCode like '%S18_3685%');

select f.film_id, f.title, f.release_year
from film as f left join film_actor as fa on fa.film_id = f.film_id
where fa.film_id is NULL;