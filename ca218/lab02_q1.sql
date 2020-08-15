select * from sakila.actor where first_name like 'A%';
select * from film_category where category_id = 3;
select avg(amount), paymentDate from payments where paymentDate like '%2004%';
select quantityInStock from products where quantityInStock > (select avg(quantityInStock) from products);
select CountryCode, count(name) from City group by CountryCode order by count(name) desc;
select region, Population, lifeExpectancy from Country group by region order by lifeExpectancy desc;
