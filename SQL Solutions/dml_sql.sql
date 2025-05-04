INSERT INTO actor (first_name, last_name, last_update) VALUES
('Tom', 'Hanks', SYSUTCDATETIME()),
('Meryl', 'Streep', SYSUTCDATETIME()),
('Brad', 'Pitt', SYSUTCDATETIME()),
('Angelina', 'Jolie', SYSUTCDATETIME()),
('Leonardo', 'DiCaprio', SYSUTCDATETIME()),
('Scarlett', 'Johansson', SYSUTCDATETIME()),
('Johnny', 'Depp', SYSUTCDATETIME()),
('Denzel', 'Washington', SYSUTCDATETIME()),
('Julia', 'Roberts', SYSUTCDATETIME()),
('Morgan', 'Freeman', SYSUTCDATETIME());

INSERT INTO country (country, last_update) VALUES
('USA', SYSUTCDATETIME()),
('Canada', SYSUTCDATETIME()),
('UK', SYSUTCDATETIME()),
('Australia', SYSUTCDATETIME()),
('France', SYSUTCDATETIME()),
('Germany', SYSUTCDATETIME()),
('Italy', SYSUTCDATETIME()),
('Japan', SYSUTCDATETIME()),
('India', SYSUTCDATETIME()),
('Brazil', SYSUTCDATETIME());


INSERT INTO category (name, last_update) VALUES
('Action', SYSUTCDATETIME()),
('Comedy', SYSUTCDATETIME()),
('Drama', SYSUTCDATETIME()),
('Horror', SYSUTCDATETIME()),
('Sci-Fi', SYSUTCDATETIME()),
('Romance', SYSUTCDATETIME()),
('Thriller', SYSUTCDATETIME()),
('Adventure', SYSUTCDATETIME()),
('Animation', SYSUTCDATETIME()),
('Documentary', SYSUTCDATETIME());


INSERT INTO city (city, country_id, last_update) VALUES
('New York', 1, SYSUTCDATETIME()),
('Toronto', 2, SYSUTCDATETIME()),
('London', 3, SYSUTCDATETIME()),
('Sydney', 4, SYSUTCDATETIME()),
('Paris', 5, SYSUTCDATETIME()),
('Berlin', 6, SYSUTCDATETIME()),
('Rome', 7, SYSUTCDATETIME()),
('Tokyo', 8, SYSUTCDATETIME()),
('Mumbai', 9, SYSUTCDATETIME()),
('Rio de Janeiro', 10, SYSUTCDATETIME());


INSERT INTO address (address, address2, district, city_id, postal_code, phone, location, last_update) VALUES
('123 Main St', 'Apt 1', 'Manhattan', 1, '10001', '123-456-7890', GEOMETRY::STPointFromText('POINT(-74.0059 40.7128)', 4326), SYSUTCDATETIME()),
('456 Elm St', 'Suite 200', 'Downtown', 2, 'M5A 1A1', '234-567-8901', GEOMETRY::STPointFromText('POINT(-79.3832 43.6532)', 4326), SYSUTCDATETIME()),
('789 Oak St', NULL, 'West End', 3, 'EC1A 1BB', '345-678-9012', GEOMETRY::STPointFromText('POINT(-0.1276 51.5074)', 4326), SYSUTCDATETIME()),
('101 Maple St', 'Floor 3', 'Central', 4, '2000', '456-789-0123', GEOMETRY::STPointFromText('POINT(151.2093 -33.8688)', 4326), SYSUTCDATETIME()),
('202 Pine St', NULL, 'Centreville', 5, '75001', '567-890-1234', GEOMETRY::STPointFromText('POINT(2.3522 48.8566)', 4326), SYSUTCDATETIME()),
('303 Birch St', NULL, 'Mitte', 6, '10115', '678-901-2345', GEOMETRY::STPointFromText('POINT(13.4050 52.5200)', 4326), SYSUTCDATETIME()),
('404 Cedar St', NULL, 'Vatican', 7, '00120', '789-012-3456', GEOMETRY::STPointFromText('POINT(12.4534 41.9029)', 4326), SYSUTCDATETIME()),
('505 Redwood St', NULL, 'Shibuya', 8, '150-0002', '890-123-4567', GEOMETRY::STPointFromText('POINT(139.6917 35.6895)', 4326), SYSUTCDATETIME()),
('606 Willow St', NULL, 'Andheri', 9, '400053', '901-234-5678', GEOMETRY::STPointFromText('POINT(72.8777 19.0760)', 4326), SYSUTCDATETIME()),
('707 Fir St', NULL, 'Lapa', 10, '20220-050', '012-345-6789', GEOMETRY::STPointFromText('POINT(-43.1729 -22.9068)', 4326), SYSUTCDATETIME());


INSERT INTO language (name, last_update) VALUES
('English', SYSUTCDATETIME()),
('French', SYSUTCDATETIME()),
('Spanish', SYSUTCDATETIME()),
('German', SYSUTCDATETIME()),
('Italian', SYSUTCDATETIME()),
('Japanese', SYSUTCDATETIME()),
('Chinese', SYSUTCDATETIME()),
('Hindi', SYSUTCDATETIME()),
('Portuguese', SYSUTCDATETIME()),
('Russian', SYSUTCDATETIME());


INSERT INTO store (manager_staff_id, address_id, last_update) VALUES
(1, 1, SYSUTCDATETIME()),
(2, 2, SYSUTCDATETIME()),
(3, 3, SYSUTCDATETIME()),
(4, 4, SYSUTCDATETIME()),
(5, 5, SYSUTCDATETIME()),
(6, 6, SYSUTCDATETIME()),
(7, 7, SYSUTCDATETIME()),
(8, 8, SYSUTCDATETIME()),
(9, 9, SYSUTCDATETIME()),
(10, 10, SYSUTCDATETIME());


INSERT INTO staff (first_name, last_name, address_id, store_id, username, password, last_update) VALUES
('John', 'Doe', 1, 1, 'jdoe', 'password123', SYSUTCDATETIME()),
('Jane', 'Smith', 2, 2, 'jsmith', 'password123', SYSUTCDATETIME()),
('Alex', 'Brown', 3, 3, 'abrown', 'password123', SYSUTCDATETIME()),
('Emily', 'Davis', 4, 4, 'edavis', 'password123', SYSUTCDATETIME()),
('Chris', 'Wilson', 5, 5, 'cwilson', 'password123', SYSUTCDATETIME()),
('Oliver', 'Martinez', 6, 6, 'omartinez', 'password123', SYSUTCDATETIME()),
('Sophia', 'Garcia', 7, 7, 'sgarcia', 'password123', SYSUTCDATETIME()),
('Liam', 'Taylor', 8, 8, 'ltaylor', 'password123', SYSUTCDATETIME()),
('Mia', 'Anderson', 9, 9, 'manderson', 'password123', SYSUTCDATETIME()),
('Lucas', 'Thomas', 10, 10, 'lthomas', 'password123', SYSUTCDATETIME());


INSERT INTO customer (store_id, first_name, last_name, email, address_id, create_date, last_update) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@email.com', 1, SYSUTCDATETIME(), SYSUTCDATETIME()),
(2, 'Bob', 'Williams', 'bob.williams@email.com', 2, SYSUTCDATETIME(), SYSUTCDATETIME()),
(3, 'Charlie', 'Lee', 'charlie.lee@email.com', 3, SYSUTCDATETIME(), SYSUTCDATETIME()),
(4, 'David', 'García', 'david.garcia@email.com', 4, SYSUTCDATETIME(), SYSUTCDATETIME()),
(5, 'Eva', 'Martinez', 'eva.martinez@email.com', 5, SYSUTCDATETIME(), SYSUTCDATETIME()),
(6, 'Frank', 'Hernandez', 'frank.hernandez@email.com', 6, SYSUTCDATETIME(), SYSUTCDATETIME()),
(7, 'Grace', 'Lopez', 'grace.lopez@email.com', 7, SYSUTCDATETIME(), SYSUTCDATETIME()),
(8, 'Hannah', 'Walker', 'hannah.walker@email.com', 8, SYSUTCDATETIME(), SYSUTCDATETIME()),
(9, 'Ivy', 'Harris', 'ivy.harris@email.com', 9, SYSUTCDATETIME(), SYSUTCDATETIME()),
(10, 'Jack', 'Young', 'jack.young@email.com', 10, SYSUTCDATETIME(), SYSUTCDATETIME());

INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, replacement_cost, rating, last_update) VALUES
('Inception', 'A mind-bending thriller by Christopher Nolan.', 2010, 1, 3, 4.99, 19.99, 'PG-13', SYSUTCDATETIME()),
('Titanic', 'A tragic love story set on the ill-fated ship.', 1997, 1, 5, 5.99, 22.99, 'PG-13', SYSUTCDATETIME()),
('The Godfather', 'A mafia saga that defined a generation.', 1972, 1, 3, 4.49, 19.99, 'R', SYSUTCDATETIME()),
('The Dark Knight', 'Batman confronts the Joker in this action-packed thriller.', 2008, 1, 4, 3.99, 20.99, 'PG-13', SYSUTCDATETIME()),
('Forrest Gump', 'A story of a simple man who witnessed historical moments.', 1994, 1, 3, 4.99, 18.99, 'PG-13', SYSUTCDATETIME()),
('Gladiator', 'A general turned gladiator seeks revenge in ancient Rome.', 2000, 1, 3, 4.99, 19.99, 'R', SYSUTCDATETIME()),
('Avengers: Endgame', 'The Avengers must reverse the damage done by Thanos.', 2019, 1, 3, 5.49, 21.99, 'PG-13', SYSUTCDATETIME()),
('Pulp Fiction', 'A nonlinear narrative of crime and redemption in LA.', 1994, 1, 4, 4.49, 19.49, 'R', SYSUTCDATETIME()),
('The Matrix', 'A hacker discovers that reality is a simulation.', 1999, 1, 3, 3.99, 18.99, 'R', SYSUTCDATETIME()),
('Schindler''s List', 'A businessman saves hundreds of Jews during the Holocaust.', 1993, 1, 3, 4.99, 22.99, 'R', SYSUTCDATETIME());


INSERT INTO film_actor (actor_id, film_id, last_update) VALUES
(1, 1, SYSUTCDATETIME()),
(2, 1, SYSUTCDATETIME()),
(3, 2, SYSUTCDATETIME()),
(4, 3, SYSUTCDATETIME()),
(5, 4, SYSUTCDATETIME()),
(6, 5, SYSUTCDATETIME()),
(7, 6, SYSUTCDATETIME()),
(8, 7, SYSUTCDATETIME()),
(9, 8, SYSUTCDATETIME()),
(10, 9, SYSUTCDATETIME());



INSERT INTO film_category (film_id, category_id, last_update) VALUES
(1, 1, SYSUTCDATETIME()),
(2, 2, SYSUTCDATETIME()),
(3, 3, SYSUTCDATETIME()),
(4, 4, SYSUTCDATETIME()),
(5, 5, SYSUTCDATETIME()),
(6, 6, SYSUTCDATETIME()),
(7, 7, SYSUTCDATETIME()),
(8, 8, SYSUTCDATETIME()),
(9, 9, SYSUTCDATETIME()),
(10, 10, SYSUTCDATETIME());



INSERT INTO film_text (film_id, title, description) VALUES
(1, 'Inception', 'A mind-bending thriller by Christopher Nolan.'),
(2, 'Titanic', 'A tragic love story set on the ill-fated ship.'),
(3, 'The Godfather', 'A mafia saga that defined a generation.'),
(4, 'The Dark Knight', 'Batman confronts the Joker in this action-packed thriller.'),
(5, 'Forrest Gump', 'A story of a simple man who witnessed historical moments.'),
(6, 'Gladiator', 'A general turned gladiator seeks revenge in ancient Rome.'),
(7, 'Avengers: Endgame', 'The Avengers must reverse the damage done by Thanos.'),
(8, 'Pulp Fiction', 'A nonlinear narrative of crime and redemption in LA.'),
(9, 'The Matrix', 'A hacker discovers that reality is a simulation.'),
(10, 'Schindler''s List', 'A businessman saves hundreds of Jews during the Holocaust.');


INSERT INTO inventory (film_id, store_id, last_update) VALUES
(1, 1, SYSUTCDATETIME()),
(2, 2, SYSUTCDATETIME()),
(3, 3, SYSUTCDATETIME()),
(4, 4, SYSUTCDATETIME()),
(5, 5, SYSUTCDATETIME()),
(6, 6, SYSUTCDATETIME()),
(7, 7, SYSUTCDATETIME()),
(8, 8, SYSUTCDATETIME()),
(9, 9, SYSUTCDATETIME()),
(10, 10, SYSUTCDATETIME());

INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id, last_update) VALUES
(SYSUTCDATETIME(), 1, 1, 1, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 2, 2, 2, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 3, 3, 3, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 4, 4, 4, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 5, 5, 5, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 6, 6, 6, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 7, 7, 7, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 8, 8, 8, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 9, 9, 9, SYSUTCDATETIME()),
(SYSUTCDATETIME(), 10, 10, 10, SYSUTCDATETIME());


INSERT INTO payment (customer_id, staff_id, rental_id, amount, payment_date, last_update) VALUES
(1, 1, 1, 4.99, SYSUTCDATETIME(), SYSUTCDATETIME()),
(2, 2, 2, 5.99, SYSUTCDATETIME(), SYSUTCDATETIME()),
(3, 3, 3, 4.49, SYSUTCDATETIME(), SYSUTCDATETIME()),
(4, 4, 4, 3.99, SYSUTCDATETIME(), SYSUTCDATETIME()),
(5, 5, 5, 4.99, SYSUTCDATETIME(), SYSUTCDATETIME()),
(6, 6, 6, 4.99, SYSUTCDATETIME(), SYSUTCDATETIME()),
(7, 7, 7, 5.49, SYSUTCDATETIME(), SYSUTCDATETIME()),
(8, 8, 8, 4.49, SYSUTCDATETIME(), SYSUTCDATETIME()),
(9, 9, 9, 3.99, SYSUTCDATETIME(), SYSUTCDATETIME()),
(10, 10, 10, 4.99, SYSUTCDATETIME(), SYSUTCDATETIME());



