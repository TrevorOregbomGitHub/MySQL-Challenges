-- Sakila Database Challenges
USE sakila;

-- Task 1 List all actors.
Select * FROM Actor;

-- Task 2 Find the surname of the actor with the forename 'John'.
SELECT actor_id, first_name, last_name 
FROM Actor 
WHERE first_name = "John";

-- Task 3 Find all actors with surname 'Neeson'.
SELECT actor_id, first_name, last_name 
FROM Actor 
WHERE last_name = "Neeson";

-- Task 4 Find all actors with ID numbers divisible by 10.
SELECT actor_id, first_name, last_name 
FROM Actor 
WHERE actor_id%10 Like "%0" ;

-- Task 5 What is the description of the movie with an ID of 100?
SELECT film_id, `description` 
FROM Film 
WHERE film_id = 100;

-- Task 6 Find every R-rated movie.
SELECT film_id, title, rating 
FROM film 
WHERE rating ="R";

-- Task 7 Find every non-R-rated movie
SELECT film_id, title, rating 
FROM film 
WHERE rating !="R";

-- Task 8 Find the ten shortest movies.
SELECT film_id, title, `length` 
FROM film 
ORDER BY `length` 
ASC LIMIT 10;

-- Task 9 Find the movies with the longest runtime, without using LIMIT
SELECT film_id, title, MAX(`length`) 
FROM film;

-- Task 10 Find all movies that have deleted scenes
SELECT film_id, title, special_features 
FROM film 
WHERE special_features LIKE "%Deleted Scenes%";

-- Task 11 Using HAVING, reverse-alphabetically list the last names that are not repeated
SELECT DISTINCT last_name 
FROM actor 
ORDER BY last_name desc;

-- Task 12 Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
SELECT actor_id, last_name, COUNT(last_name) 
FROM actor 
ORDER BY last_name desc;

-- Task 13 Which actor has appeared in the most films?
SELECT Actor.actor_id, Actor.first_name, Actor.last_name 
FROM Actor 
JOIN film_actor ON actor.actor_id = film_actor.actor_id;

-- Task 14 When is 'Academy Dinosaur' due?
SELECT film.film_id, film.title, return_date 
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.rental_id
WHERE title = ("Academy Dinosaur");

-- Task 15 What is the average runtime of all films?
SELECT film_id, title, AVG(`length`) AS average_runtime
FROM film; 

-- Task 16 List the average runtime for every film category.
SELECT film.film_id, category_id, AVG(`length`) 
FROM film
JOIN film_category ON film.film_id = film_category.film_id
GROUP BY category_id
;

-- Task 17 List all movies featuring a robot.
SELECT film_id, title, `description` 
FROM film 
WHERE `description` LIKE "%Robot%";

-- Task 18 How many movies were released in 2010?
SELECT COUNT(release_year)
FROM film 
WHERE release_year = 2010;

-- Task 19 Find the titles of all the horror movies
SELECT film.film_id, film.title
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE `name` = "horror"; 

-- Task 20 List the full name of the staff member with the ID of 2.
SELECT CONCAT(first_name, " ", last_name) AS `FULL NAME`
FROM staff
WHERE staff_id = 2;

-- Task 21 List all the movies that Fred Costner has appeared in.
SELECT CONCAT(first_name, " ", last_name) AS `Name`, title
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE first_name = "Fred" AND last_name = "Costner";

-- Task 22 How many distinct countries are there?
SELECT DISTINCT COUNT(country)
FROM country;

-- Task 23 List the name of every language in reverse-alphabetical order.
SELECT `name`
FROM `language`
ORDER BY `name` DESC;

-- Task 24 List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
SELECT CONCAT(first_name, " ", last_name) AS `Full Name`
FROM actor
WHERE last_name LIKE "%son"
ORDER BY first_name
;

-- Task 25 Which category contains the most films?
SELECT `name` AS "Film Name", COUNT(`name`) AS "Total Films"
FROM category
JOIN film_category ON category.category_id = film_category.category_id
GROUP BY `name`
ORDER BY COUNT(`name`) DESC
LIMIT 1
;



