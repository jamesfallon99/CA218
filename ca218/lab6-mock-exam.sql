#Q1.a
select last_name from actor where first_name like '%ADAM%';

#Q1.b
select f.title, c.name 
from film as f, category as c, film_category as fc 
where c.category_id = fc.category_id and fc.film_id = f.film_id and f.title like 'A%' order by f.title;

#Q2.a
select co.Name as country, c.Name as city, ((c.Population / co.Population) * 100) as percentage 
from Country as co, City as c 
where co.Code = c.CountryCode and co.LifeExpectancy > 75 
order by ((c.Population / co.Population) * 100) desc;

#Q2.b
select distinct co.Name, co.Population, (select count(Language) from CountryLanguage as x where x.CountryCode = cl.CountryCode) as languages
from Country as co, CountryLanguage as cl 
where co.Code = cl.CountryCode and co.Population > 
(select avg(co.Population) from Country as co);

#Q3.a
select p.productName
from products as p, orderdetails as od 
where od.quantityOrdered > (select od.quantityOrdered from orderdetails as od where p.productCode like '%S18_3685%') and od.productCode = p.productCode;