select City.Name as City, Country.Name as Country from City, Country where City.Name like 'A%' AND City.CountryCode = Country.Code;
#select City.Name as City, Country.Name as Country from City Inner Join Country on Country.Code = City.CountryCode where City.Name like 'A%';
select country.Name,  cl.Language from Country country, CountryLanguage cl where cl.Percentage = (select max(Percentage) from CountryLanguage as x where x.CountryCode  = cl.CountryCode) and country.Code = cl.CountryCode group by cl.CountryCode;
#select film_id, title, release_year from film Left Join film_actor on film.film_id = film_actor.film_id where film_actor.film_id IS NULL;
select F.film_id, title, release_year from film F Left Join film_actor FA on F.film_id = FA.film_id where FA.film_id IS NULL;
select F.title, release_year, category.name as category from film F, category where F.description = film_text.description AND F.film_id = category.film_id AND film_text.description like '%Moose%' group by F.title;