-- Queries:
-- 1. What query would you run to get all the countries that speak Slovene?
-- Your query should return the name of the country, language and language percentage.
-- Your query should arrange the result by language percentage in descending order. 

SELECT countries.name AS Country, languages.the_language AS Language
FROM countries
LEFT JOIN languages
ON countries.id = languages.country_id
WHERE the_language = "Slovene";

-- 3. What query would you run to get all the cities in Mexico with a population of greater than 500,000?
-- Your query should arrange the result by population in descending order

SELECT cities.name AS City, cities.population AS Population
FROM cities
LEFT JOIN countries
ON countries.id = cities.country_id
WHERE countries.name = "Mexico" AND cities.population > 500000;

-- 4. What query would you run to get all languages in each country with a percentage greater than 89%?
-- Your query should arrange the result by percentage in descending order. 

SELECT countries.name AS Country, languages.the_language AS Language, languages.percentage AS Percentage
FROM countries
LEFT JOIN languages
ON countries.id = languages.country_id
WHERE languages.percentage > "89%"
ORDER BY languages.percentage DESC;

-- 5. What query would you run to get all the countries with
-- Surface Area below 501 and Population greater than 100,000?

SELECT countries.name AS country, countries.surface_area AS Surface_Area, countries.population AS Population
FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000;

-- 6. What query would you run to get countries with only Constitutional Monarchy
-- with a capital greater than 200 and a life expectancy greater than 75 years?

SELECT countries.name AS Country, countries.government_form AS Government, countries.capital AS Capital, countries.life_expectancy AS Life_Expectancy
FROM countries
WHERE countries.government_form = "Constitutional Monarchy" AND countries.capital > 200 AND countries.life_expectancy > 75;

-- 7. What query would you run to get all the cities of Argentina inside the
-- Buenos Aires district and have the population greater than 500, 000?
-- The query should return the Country Name, City Name, District and Population. 

SELECT countries.name AS Country_Name, cities.name AS City_Name, cities.district AS District, cities.population AS Population
FROM countries
LEFT JOIN cities
ON countries.id = cities.country_id
WHERE countries.name = "Argentina" AND cities.population > 500000 AND cities.district = "Buenos Aires";

-- 8. What query would you run to summarize the number of countries in each region?
-- The query should display the name of the region and the number of countries.
-- Also, the query should arrange the result by the number of countries in descending order

SELECT COUNT(countries.id) AS Number_of_Countries, countries.region AS Region
FROM countries
GROUP BY countries.region;

-- SELECT countries.name AS Country, countries.region AS Region
-- FROM countries
-- ORDER BY countries.region;

-- 2. What query would you run to display the total number of cities for each country?
-- Your query should return the name of the country and the total number of cities.
-- Your query should arrange the result by the number of cities in descending order. (3)

SELECT COUNT(cities.id) AS Num_Cities, countries.name AS Country
FROM countries
LEFT JOIN cities
ON countries.id = cities.country_id
GROUP BY countries.name;

-- SELECT cities.name AS Cities, countries.name AS Country
-- FROM countries
-- LEFT JOIN cities
-- ON countries.id = cities.country_id
-- ORDER BY countries.name;









