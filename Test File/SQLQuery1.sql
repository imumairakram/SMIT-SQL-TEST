-- 1. Find the most popular movie category based on rentals.
-- Question: Write a query to find the movie category that has been rented the most times.

SELECT TOP 1 c.name AS category_name, COUNT(*) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY rental_count DESC;


-- 2. Find the customer who has rented the most films (by counting the rentals).
-- Question: Write a query to determine which customer has rented the most films based on the
-- number of rentals they have made.

SELECT TOP 1 c.customer_id, c.first_name, c.last_name, COUNT(*) AS rental_count
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY rental_count DESC;

-- 3. List all customers along with their rentals, including customers who have not rented any
-- films.
-- Question: Write a query to list all customers and their rentals, ensuring that customers who
-- have not rented any films are also included.

SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    r.rental_id, 
    r.rental_date
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
ORDER BY c.customer_id, r.rental_date;


-- 4. List all films that have been rented more than once by a single customer
-- Question: Write a query to find all films that have been rented more than once by the same
-- customer. Include the film title and the number of times it was rented by each customer.

SELECT 
    f.title,
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(*) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN customer c ON r.customer_id = c.customer_id
GROUP BY f.title, c.customer_id, c.first_name, c.last_name
HAVING COUNT(*) > 1
ORDER BY f.title, rental_count DESC;

-- 5. Find the total amount spent by each customer.
-- Question: Write a query to calculate the total amount spent by each customer. The query
-- should list the customer’s ID, first name, last name, and total amount spent.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_amount_spent
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_amount_spent DESC;

-- 6. Classify customers based on their total spending into three categories: "Low spender,"
-- "Medium spender," and "High spender."
-- Question: Write a query to classify customers based on their total spending into three
-- categories: "Low spender," "Medium spender," and "High spender."

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_spent,
    CASE
        WHEN SUM(p.amount) < 50 THEN 'Low spender'
        WHEN SUM(p.amount) BETWEEN 50 AND 200 THEN 'Medium spender'
        WHEN SUM(p.amount) > 200 THEN 'High spender'
    END AS spending_category
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

-- 7. Create a view top_customers_per_store that lists the top 3 customers by total payment
--amount for each store. Include store ID, customer ID, customer name, total payment amount,
-- and rank.
-- Question: Write a query to create a view top_customers_per_store that ranks the top 3
-- customers by total payment for each store.

CREATE VIEW top_customers_per_store AS
WITH ranked_customers AS (
    SELECT
        s.store_id,
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(p.amount) AS total_payment,
        RANK() OVER (PARTITION BY s.store_id ORDER BY SUM(p.amount) DESC) AS rank
    FROM customer c
    JOIN payment p ON c.customer_id = p.customer_id
    JOIN store s ON c.store_id = s.store_id
    GROUP BY s.store_id, c.customer_id, c.first_name, c.last_name
)
SELECT *
FROM ranked_customers
WHERE rank <= 3;


-- 8. Find the customer who rented the most movies in a single month.
-- Question: Write a query to identify the customer who rented the most movies in a single
-- month.


WITH monthly_rentals AS (
    SELECT
        customer_id,
        DATEPART(YEAR, rental_date) AS rental_year,
        DATEPART(MONTH, rental_date) AS rental_month,
        COUNT(*) AS rental_count
    FROM rental
    GROUP BY customer_id, DATEPART(YEAR, rental_date), DATEPART(MONTH, rental_date)
),
ranked_rentals AS (
    SELECT *,
        RANK() OVER (ORDER BY rental_count DESC) AS rank
    FROM monthly_rentals
)
SELECT *
FROM ranked_rentals
WHERE rank = 1;


--9. Write a stored procedure sp_films_never_rented that returns the list of films that were
--never rented, including film ID, title, and release year.
--Question: Write a stored procedure named sp_films_never_rented that returns a list of films
--that have never been rented, showing the film ID, title, and release year.

CREATE PROCEDURE sp_films_never_rented
AS
BEGIN
    SELECT f.film_id, f.title, f.release_year
    FROM film f
    LEFT JOIN inventory i ON f.film_id = i.film_id
    LEFT JOIN rental r ON i.inventory_id = r.inventory_id
    WHERE r.rental_id IS NULL;
END;

-- 10. Write a query to return the most recent rental per customer, showing customer name,
-- rental date, and film title.
-- Question: Write a query to return the most recent rental per customer, including the
-- customer’s name, rental date, and film title.

SELECT c.first_name, c.last_name, r.rental_date, f.title
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN films f ON i.film_id = f.film_id
WHERE r.rental_date = (
    SELECT MAX(rental_date)
    FROM rentals
    WHERE customer_id = c.customer_id
)
ORDER BY c.customer_id;
