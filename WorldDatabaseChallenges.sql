-- World Database Challenges
USE world;
-- Task 1 Using COUNT, get the number of cities in the USA.
SELECT COUNT(name) 
FROM City 
WHERE District = "USA";

-- Task 3 Find out the population and life expectancy for people in Argentina.
SELECT `name`, Population, LifeExpectancy 
FROM Country 
WHERE `name` = "Argentina";

-- Task 4 Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?

-- Task 5 Using JOIN ... ON, find the capital city of Spain.
-- Task 6 Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.
-- Task 7 Using a single query, list 25 cities around the world that start with the letter F.
-- Task 8 Using COUNT and JOIN ... ON, get the number of cities in China.
-- Task 9 Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
-- Task 10 Using aggregate functions, return the number of countries the database contains.
-- Task 11 What are the top ten largest countries by area?
-- Task 12 List the five largest cities by population in Japan.
-- Task 13 List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
-- Task 14 List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.
-- Task 15 List every unique world language.
-- Task 16 List the names and GNP of the world's top 10 richest countries.
-- Task 17 List the names of, and number of languages spoken by, the top ten most multilingual countries.
-- Task 18 List every country where over 50% of its population can speak German.
-- Task 19 Which country has the worst life expectancy? Discard zero or null values.
-- Task 20 List the top three most common government forms.
-- Task 21 How many countries have gained independence since records began?
