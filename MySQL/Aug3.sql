use book_shop;

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
--  
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
--  
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

-- select curdate();
-- select curtime();
-- select now();

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

-- select birthdate, day(birthdate), dayofweek(birthdate), dayofyear(birthdate) from people;

-- select birthdate, monthname(birthdate) from people;

-- select year(birthdt), month(birthdt), day(birthdt), hour(birthdt), minute(birthdt), second(birthdt) from people;

-- select date_format(birthdate, '%M %e %Y'), date_format(birthdt, '%r') from people;

-- select datediff(curdate(), birthdt) from people;

-- select birthdt, date_add(birthdt, interval 18 year) from people;

-- select birthdt, date_sub(birthdt, interval 18 year) from people;

-- CREATE TABLE captions (
--   text VARCHAR(150),
--   created_at TIMESTAMP default CURRENT_TIMESTAMP
-- );
--  
-- CREATE TABLE captions2 (
--   text VARCHAR(150),
--   created_at TIMESTAMP default CURRENT_TIMESTAMP,
--   updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );


-- select now();
-- select curdate();

-- select dayofweek(curdate());

-- SELECT DATE_FORMAT(NOW(), '%m/%d/%Y') AS current_date2;

-- select dayname(curdate());

-- SELECT * FROM books
-- WHERE released_year != 2017;

-- SELECT * FROM books
-- WHERE title NOT LIKE '%e%';

-- select title, released_year, pages from books where pages > 500;

-- SELECT * FROM books
-- WHERE pages < 200;
--  
-- SELECT * FROM books
-- WHERE released_year < 2000;
--  
-- SELECT * FROM books
-- WHERE released_year <= 1985;

-- select * from books where released_year>2010 and author_lname = 'Eggers';

-- select * from books where released_year>2010 and author_lname = 'Eggers' and title like '%novel%';

-- SELECT title, pages FROM books 
-- WHERE CHAR_LENGTH(title) > 30
-- AND pages > 500;
--  
-- SELECT title, author_lname FROM books
-- WHERE author_lname='Eggers' AND
-- released_year > 2010;
--  
-- SELECT title, author_lname, released_year FROM books
-- WHERE author_lname='Eggers' OR
-- released_year > 2010;
--  
--  
-- SELECT title, pages FROM books
-- WHERE pages < 200 
-- OR title LIKE '%stories%';

-- select released_year from books where released_year>=2004 and released_year<=2015;

-- select released_year from books where released_year between 2004 and 2015;

-- SELECT * FROM people WHERE birthtime 
-- BETWEEN CAST('12:00:00' AS TIME) 
-- AND CAST('16:00:00' AS TIME);
--  
--  
-- SELECT * FROM people WHERE HOUR(birthtime)
-- BETWEEN 12 AND 16;

-- SELECT title, author_lname FROM books
-- WHERE author_lname = 'Carver' 
-- OR author_lname = 'Lahiri'
-- OR author_lname = 'Smith';
--  
-- SELECT title, author_lname FROM books
-- WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
--  
-- SELECT title, author_lname FROM books
-- WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');
--  
--  
-- SELECT title, released_year FROM books
-- WHERE released_year >= 2000 
-- AND released_year % 2 = 1;

-- SELECT title, released_year,
-- CASE
-- 	WHEN released_year >= 2000 THEN 'modern lit'
--     ELSE '20th century lit' 
-- END AS genre
-- FROM books;

	
 
 
-- SELECT 
--     title,
--     stock_quantity,
--     CASE
--         WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
--         WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
--         WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
--         WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
--         ELSE '*****'
--     END AS stock
-- FROM
--     books;
--  
 
-- SELECT 
--     title,
--     stock_quantity,
--     CASE
--         WHEN stock_quantity <= 40 THEN '*'
--         WHEN stock_quantity <= 70 THEN '**'
--         WHEN stock_quantity <= 100 THEN '***'
--         WHEN stock_quantity <= 140 THEN '****'
--         ELSE '*****'
--     END AS stock
-- FROM
--     books;
--   

-- select * from books where released_year < 1980;  

-- select * from books where author_lname in ('Eggers', 'Chabon');

-- select * from books where author_lname = 'Lahiri' and released_year > 2000;

-- select * from books where pages between 100 and 200;

-- select * from books where author_lname like 'C%' or author_lname like 'S%';

-- select *,
-- case
-- 	when title like '%stories%' then 'Short Stories'
--     when title like '%Just Kids%' or title like '%A Heartbreaking Work%' then 'Memoir'
--     else 'Novel'
--     
-- end as 'TYPE'
-- from books;

-- select author_fname, author_lname, concat(count(*), ' books') as 'COUNT' from books group by author_fname, author_lname;


-- create table contacts(name varchar(100) not null, phone varchar(15) not null unique);
-- insert into contacts (name, phone) values ('Thomas', '9898989898'), ('Shelby', '7878787878');

-- CREATE TABLE users (
-- 	username VARCHAR(20) NOT NULL,
--     age INT CHECK (age > 0)
-- );
--  
-- CREATE TABLE palindromes (
--   word VARCHAR(100) CHECK(REVERSE(word) = word)
-- )

-- insert into palindromes values ('racecar');
-- select * from palindromes;

-- CREATE TABLE companies (
--     name VARCHAR(255) NOT NULL,
--     address VARCHAR(255) NOT NULL,
--     CONSTRAINT name_address UNIQUE (name , address)
-- );
--  
-- CREATE TABLE houses (
--   purchase_price INT NOT NULL,
--   sale_price INT NOT NULL,
--   CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
-- );

-- insert into companies values ('ABC', 'Gandhinagaar'),('PQR', 'Ahmedabad');

-- alter table companies add column phone varchar(15);

-- alter table companies add column employee_count int not null;
-- select * from companies;

-- alter table companies drop column phone;

