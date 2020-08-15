select City.Name as City, Country.Name as Country from City, Country where City.Name like 'A%' AND City.CountryCode = Country.Code;
#select City.Name as City, Country.Name as Country from City Inner Join Country on Country.Code = City.CountryCode where City.Name like 'A%';
select Country.Name as Country, Language, Percentage from Country Inner Join CountryLanguage on Country.Code = CountryLanguage.CountryCode group by CountryLanguage.Percentage desc;
#select film_id, title, release_year from film Left Join film_actor on film.film_id = film_actor.film_id where film_actor.film_id IS NULL;
select F.film_id, title, release_year from film F Left Join film_actor FA on F.film_id = FA.film_id where FA.film_id IS NULL;
select F.title, release_year, category_id from film F, category where F.description like '%Moose%' group by F.title;