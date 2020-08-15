select City.Name as City, Country.Name as Country from City, Country where City.Name like 'A%' AND City.CountryCode = Country.Code;
#select City.Name as City, Country.Name as Country from City Inner Join Country on Country.Code = City.CountryCode where City.Name like 'A%';
select country.Name,  cl.Language from Country country, CountryLanguage cl where cl.Percentage = (select max(Percentage) from CountryLanguage as x where x.CountryCode  = cl.CountryCode) and country.Code = cl.CountryCode group by cl.CountryCode;
#select film_id, title, release_year from film Left Join film_actor on film.film_id = film_actor.film_id where film_actor.film_id IS NULL;
select F.film_id, title, release_year from film F Left Join film_actor FA on F.film_id = FA.film_id where FA.film_id IS NULL;
select f.title, f.release_year, c.name, f.description from film as f join film_category as fc on f.film_id = fc.film_id join category as c on c.category_id = fc.category_id where f.description like '%moose%';