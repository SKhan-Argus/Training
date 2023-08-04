-- use shirts_db;

-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(50)
-- );

-- CREATE TABLE orders (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     order_date DATE,
--     amount DECIMAL(8 , 2 ),
--     customer_id INT
-- );

-- INSERT INTO customers (first_name, last_name, email) 
-- VALUES ('Boy', 'George', 'george@gmail.com'),
--        ('George', 'Michael', 'gm@gmail.com'),
--        ('David', 'Bowie', 'david@gmail.com'),
--        ('Blue', 'Steele', 'blue@gmail.com'),
--        ('Bette', 'Davis', 'bette@aol.com');
--        
--        
-- INSERT INTO orders (order_date, amount, customer_id)
-- VALUES ('2016-02-10', 99.99, 1),
--        ('2017-11-11', 35.50, 1),
--        ('2014-12-12', 800.67, 2),
--        ('2015-01-03', 12.50, 2),
--        ('1999-04-11', 450.25, 5);

-- drop table customers;
-- drop table orders;

-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(50)
-- );
--  
-- CREATE TABLE orders (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     order_date DATE,
--     amount DECIMAL(8,2),
--     customer_id INT,
--     FOREIGN KEY (customer_id) REFERENCES customers(id)
-- );
--  
-- INSERT INTO customers (first_name, last_name, email) 
-- VALUES ('Boy', 'George', 'george@gmail.com'),
--        ('George', 'Michael', 'gm@gmail.com'),
--        ('David', 'Bowie', 'david@gmail.com'),
--        ('Blue', 'Steele', 'blue@gmail.com'),
--        ('Bette', 'Davis', 'bette@aol.com');
--        
--        
-- INSERT INTO orders (order_date, amount, customer_id)
-- VALUES ('2016-02-10', 99.99, 1),
--        ('2017-11-11', 35.50, 1),
--        ('2014-12-12', 800.67, 2),
--        ('2015-01-03', 12.50, 2),
--        ('1999-04-11', 450.25, 5);


-- SELECT id FROM customers WHERE last_name = 'George';
-- SELECT * FROM orders WHERE customer_id = 1;

-- SELECT * FROM orders 
-- WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');

-- SELECT 
--     *
-- FROM
--     customers,
--     orders;

-- SELECT 
--     first_name, last_name, SUM(amount) AS total
-- FROM
--     customers
--         JOIN
--     orders ON customers.id = orders.customer_id
-- GROUP BY first_name , last_name
-- ORDER BY total DESC;


-- SELECT 
--     first_name, last_name, order_date, amount
-- FROM
--     customers
--         LEFT JOIN
--     orders ON orders.customer_id = customers.id;
--  
--  
-- SELECT 
--     order_date, amount, first_name, last_name
-- FROM
--     orders
--         LEFT JOIN
--     customers ON orders.customer_id = customers.id;

-- SELECT 
--     first_name, last_name, order_date, amount
-- FROM
--     customers
--         RIGHT JOIN
--     orders ON customers.id = orders.customer_id;


-- CREATE TABLE students (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50)
-- );

-- CREATE TABLE papers (
--     title VARCHAR(100),
--     grade INT,
--     student_id INT,
--     FOREIGN KEY (student_id)
--         REFERENCES students (id)
-- );

-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
--  
-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- SELECT 
--     first_name, title, grade
-- FROM
--     students
--         JOIN
--     papers ON student_id = id
-- ORDER BY grade DESC;


-- SELECT 
--     first_name, title, grade
-- FROM
--     students
--         LEFT JOIN
--     papers ON student_id = id;
--     
--     
--  SELECT 
--     first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
-- FROM
--     students
--         LEFT JOIN
--     papers ON student_id = id;
--     
--     
-- SELECT 
--     first_name, AVG(IFNULL(grade, 0)) AS average
-- FROM
--     students
--         LEFT JOIN
--     papers ON student_id = id
-- GROUP BY first_name
-- ORDER BY average DESC;


-- SELECT 
--     first_name,
--     AVG(IFNULL(grade, 0)) AS average,
--     CASE
--         WHEN AVG(IFNULL(grade, 0)) >= 75 THEN 'PASSING'
--         ELSE 'FAILING'
--     END AS passing_status
-- FROM
--     students
--         LEFT JOIN
--     papers ON student_id = id
-- GROUP BY first_name
-- ORDER BY average DESC;


-- create database tv_db;
-- use tv_db;


-- CREATE TABLE reviewers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE series (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(100),
--     released_year YEAR,
--     genre VARCHAR(100)
-- );

-- CREATE TABLE reviews (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     rating DECIMAL(2,1),
--     reviewers_id INT,
--     series_id INT,
--     FOREIGN KEY (reviewers_id)
--         REFERENCES reviewers (id),
--     FOREIGN KEY (series_id)
--         REFERENCES series (id)
-- );

-- INSERT INTO series (title, released_year, genre) VALUES
--     ('Archer', 2009, 'Animation'),
--     ('Arrested Development', 2003, 'Comedy'),
--     ("Bob's Burgers", 2011, 'Animation'),
--     ('Bojack Horseman', 2014, 'Animation'),
--     ("Breaking Bad", 2008, 'Drama'),
--     ('Curb Your Enthusiasm', 2000, 'Comedy'),
--     ("Fargo", 2014, 'Drama'),
--     ('Freaks and Geeks', 1999, 'Comedy'),
--     ('General Hospital', 1963, 'Drama'),
--     ('Halt and Catch Fire', 2014, 'Drama'),
--     ('Malcolm In The Middle', 2000, 'Comedy'),
--     ('Pushing Daisies', 2007, 'Comedy'),
--     ('Seinfeld', 1989, 'Comedy'),
--     ('Stranger Things', 2016, 'Drama');
--  
--  
-- INSERT INTO reviewers (first_name, last_name) VALUES
--     ('Thomas', 'Stoneman'),
--     ('Wyatt', 'Skaggs'),
--     ('Kimbra', 'Masters'),
--     ('Domingo', 'Cortes'),
--     ('Colt', 'Steele'),
--     ('Pinkie', 'Petit'),
--     ('Marlon', 'Crafford');
--     
--  
-- INSERT INTO reviews(series_id, reviewers_id, rating) VALUES
--     (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
--     (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
--     (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
--     (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
--     (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
--     (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
--     (7,2,9.1),(7,5,9.7),
--     (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
--     (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
--     (10,5,9.9),
--     (13,3,8.0),(13,4,7.2),
--     (14,2,8.5),(14,3,8.9),(14,4,8.9);


-- SELECT 
--     title, rating
-- FROM
--     series
--         JOIN
--     reviews ON series.id = reviews.series_id;
--     
--     
-- SELECT 
--     title, ROUND(AVG(rating), 2) AS avg_rating
-- FROM
--     series
--         JOIN
--     reviews ON series.id = reviews.series_id
-- GROUP BY title
-- ORDER BY avg_rating;

-- SELECT 
--     first_name, last_name, rating
-- FROM
--     reviewers
--         JOIN
--     reviews ON reviews.reviewer_id = reviewers.id;
--     
-- SELECT 
--     title AS unreviewed_series
-- FROM
--     series
--         LEFT JOIN
--     reviews ON series.id = reviews.series_id
-- WHERE
--     rating IS NULL;
--     
-- SELECT 
--     genre, ROUND(AVG(rating), 2) AS avg_rating
-- FROM
--     series
--         JOIN
--     reviews ON series.id = reviews.series_id
-- GROUP BY genre;


-- SELECT 
--     first_name,
--     last_name,
--     COUNT(rating) AS 'COUNT',
--     MIN(IFNULL(rating, 0)) AS 'MIN',
--     MAX(IFNULL(rating, 0)) AS 'MAX',
--     ROUND(AVG(IFNULL(rating, 0)), 2) AS 'AVG',
--     CASE
--         WHEN COUNT(rating) = 0 THEN 'INACTIVE'
--         ELSE 'ACTIVE'
--     END AS 'STATUS'
-- FROM
--     reviewers
--         LEFT JOIN
--     reviews ON reviews.reviewers_id = reviewers.id
-- GROUP BY first_name , last_name;

-- SELECT 
-- title,
-- rating,
--     CONCAT(first_name, ' ', last_name) AS 'reviewer'
-- FROM
--     reviews r
--         INNER JOIN
--     reviewers rw ON r.reviewers_id = rw.id
--         INNER JOIN
--     series s ON r.series_id = s.id
-- ORDER BY title;

-- SELECT 
--     title, released_year, genre, rating, first_name, last_name
-- FROM
--     reviews
--         JOIN
--     series ON series.id = reviews.series_id
--         JOIN
--     reviewers ON reviewers.id = reviews.reviewer_id;
--  
-- CREATE VIEW full_reviews AS
-- SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
-- JOIN series ON series.id = reviews.series_id
-- JOIN reviewers ON reviewers.id = reviews.reviewer_id;
--  
-- SELECT 
--     *
-- FROM
--     full_reviews;


-- CREATE VIEW ordered_series AS
-- SELECT * FROM series ORDER BY released_year;
--  
-- CREATE OR REPLACE VIEW ordered_series AS
-- SELECT * FROM series ORDER BY released_year DESC;
--  
-- ALTER VIEW ordered_series AS
-- SELECT * FROM series ORDER BY released_year;
--  
-- DROP VIEW ordered_series;

-- SELECT 
--     title, 
--     AVG(rating),
--     COUNT(rating) AS review_count
-- FROM full_reviews 
-- GROUP BY title HAVING COUNT(rating) > 1;

-- SELECT 
--     title, AVG(rating)
-- FROM
--     full_reviews
-- GROUP BY title WITH ROLLUP;
--  
--  
-- SELECT 
--     title, COUNT(rating)
-- FROM
--     full_reviews
-- GROUP BY title WITH ROLLUP;
--  
--  
-- SELECT 
--     first_name, released_year, genre, AVG(rating)
-- FROM
--     full_reviews
-- GROUP BY released_year , genre , first_name WITH ROLLUP;

-- set session sql_mode='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

