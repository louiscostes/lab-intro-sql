USE sakila;
SHOW tables

USE sakila;
SELECT actor_id FROM sakila.actor;

USE sakila;
Select title FROM sakila.film;

-- Select one column and alias it. Get languages 
USE sakila;
SELECT *, name as language_name from language; 

-- Total number of stores 
SELECT count(store_id) from store; 

-- Total number employees 
SELECT count(staff_id) from staff;

-- Check name 
SELECT first_name as name from staff

-- Select all actors with first name "scarlett"
USE sakila;
SELECT * FROM staff
WHERE first_name IN ('Scarlett'); 

-- Last name is Johansson
SELECT * FROM staff
WHERE last_name IN ('Johansson'); 

-- How many films available to rent
USE sakila; 
SELECT count(title) from film;

-- How many films have been rented
select count(customer_id) from rental;

-- Shortest and max rental period 
SELECT max(rental_duration) as 'max', min(rental_duration) as 'min' from sakila.film;

-- Average movie duration 
USE sakila;
SELECT floor(avg(length)) from sakila.film;

-- Format in hours-min
SELECT CONCAT(FLOOR(minutes/60),'h ',MOD(minutes,60),'m');

-- Movies longer than 3 hours
SELECT*FROM sakila.film
WHERE length >180

-- name and email formatted 
SELECT*, concat(first_name,last_name) as 'concat' from sakila.staff;

-- length of longest film title 
SELECT*, length(title) as 'title_length' from sakila.film;

SELECT max(title_lenght) as 'max_length' from sakila.film;
