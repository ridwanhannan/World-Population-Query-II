-- How many entries in the database are from Africa?
SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa';
-- Answer:56


-- What was the total population of Oceania in 2005?
SELECT SUM(population)
FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE year = 2005
    AND continent = 'Oceania';
-- Answer: 32.66417 (millions)


-- What is the average population of countries in South America in 2003?
SELECT AVG(population)
FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE year = 2003
    AND continent = 'South America';
-- Answer: 25.89 (millions)


-- What country had the smallest population in 2007?
SELECT name, population
FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE year = 2007
    AND population IS NOT NULL
ORDER BY population ASC
LIMIT 1;
-- Answer: Niue 0.00216 (millions)


-- What is the average population of Poland during the time period covered by this dataset?
SELECT AVG(population)
FROM countries
JOIN population_years ON countries_id = population_years.country_id
WHERE name = 'Poland';
-- Answer: 38.56 (millions)


-- How many countries have the word "The" in their name?
SELECT *
FROM countries
WHERE name LIKE '%The%';
-- Answer: 4


-- What was the total population of each continent in 2010?
SELECT continent, SUM(population)
FROM countries
JOIN population_years ON countries.id = population_years.country_id
WHERE year = '2010'
GROUP BY continent;
-- Answer:
-- Africa: 1015.48
-- Asia: 4133.09
-- Europe: 723.06
-- North America: 539.79
-- Oceania: 34.96
-- South America: 396.58
