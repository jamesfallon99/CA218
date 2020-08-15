#q1
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

#q2
select distinct pl.productLine as productline_name, pl.textDescription, count(od.quantityOrdered)
from productlines as pl, orderdetails as od, products as p 
where pl.productLine = p.productLine and p.productCode = od.productCode
group by pl.productLine
order by count(od.quantityOrdered) desc limit 3;

#q2 from lecture
#select pl.productLine, pl.textDescription, count(od.quantityOrdered) as sales
#from productlines as pl join products as po on pl.productLine = po.productLine join orderdetails as od on po.productCode = od.productCode
#group by pl.productLine
#order by sales
#desc limit 3;

#q3
select p.productLine, sum((od.priceEach - p.buyPrice) * od.quantityOrdered) as income 
from products as p, orderdetails as od where p.productCode = od.productCode group by p.productLine limit 1;

#select p.productLine, sum((od.priceEach - p.buyPrice) * od.quantityOrdered) as income
#from orderdetails od join products p on p.productCode = od.productCode
#join productlines pl on pl.productLine = p.productLine group by p.productLine order by income desc limit 1;

