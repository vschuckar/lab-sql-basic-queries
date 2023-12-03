USE sakila;

-- Display all available tables in the Sakila database.
SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film; 
SELECT * FROM customer;

/*
Retrieve the following columns from their respective tables:
3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table
*/
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

-- Retrieve unique release years.
SELECT distinct(release_year) FROM film;

/* 
Counting records for database insights:
5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database.
*/ 
SELECT count(distinct(store_id)) as number_of_stores FROM store;

SELECT count(distinct(staff_id)) as number_of_employees FROM staff;

SELECT count(inventory_id) as film_inventory_quantity FROM inventory;
SELECT count(distinct(inventory_id)) as rented_unique FROM rental;

SELECT count(distinct(last_name)) as unique_last_name FROM actor;

-- Retrieve the 10 longest films.
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

/*
Use filtering techniques in order to:
7.1 Retrieve all actors with the first name "SCARLETT".
BONUS:
7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
7.3 Determine the number of films that include Behind the Scenes content
*/
SELECT * FROM actor
WHERE first_name = "SCARLETT";

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT * FROM film
WHERE special_features LIKE '%Behind the Scenes%';
