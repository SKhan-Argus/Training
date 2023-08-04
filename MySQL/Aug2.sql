-- use pet_shop;
-- set SQL_SAFE_UPDATES = 0;
-- desc cats;

-- insert into cats(name) values ('tood');

-- insert into cats() values ();

-- select * from cats;

-- create table cats2(
-- name varchar(50) not null,
-- age int not null
-- );

-- insert into cats2(name, age) values ('bilbo', 6);
-- select * from cats2;

-- desc cats2;


-- create table cats3(
-- name varchar(50) default 'unnamed',
-- age int default 99);

-- desc cats3;

-- insert into cats3() values ();

-- select * from cats3;


-- create table cats4(
-- name varchar(50) not null default 'unnamed',
-- age int not null default 99);

-- desc cats4


-- create table cats5(
-- cat_id int primary key,
-- name varchar(50) default 'unnamed',
-- age int default 99);

-- insert into cats5(cat_id, name, age) values (1,'bilbo', 6);
-- select * from cats5;



-- create table cats6(
-- cat_id int primary key auto_increment,
-- name varchar(50) default 'unnamed',
-- age int default 99);

-- insert into cats6(name, age) values ('bilbo', 6);
-- insert into cats6(name, age) values ('bilbo', 6);
-- select * from cats6;
-- desc cats6;



-- create table employees(
-- id int primary key auto_increment,
-- last_name varchar(50) not null,
-- first_name varchar(50) not null,
-- middle_name varchar(50),
-- age int not null,
-- current_status varchar(50) not null default 'employed'
-- );

-- desc employees;



-- drop table cats;
-- CREATE TABLE cats (
--     cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     breed VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- );

-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--        ('Cindy', 'Maine Coon', 10),
--        ('Dumbledore', 'Maine Coon', 11),
--        ('Egg', 'Persian', 4),
--        ('Misty', 'Tabby', 13),
--        ('George Michael', 'Ragdoll', 9),
--        ('Jackson', 'Sphynx', 7);
--        

-- select * from cats;
-- select name from cats;
-- select age from cats;

-- set SQL_SAFE_UPDATES = 0;
-- delete from cats where cat_id = 3;
-- set SQL_SAFE_UPDATES = 1;



-- SELECT cat_id FROM cats;

-- SELECT name, breed FROM cats;

-- SELECT name, age FROM cats WHERE breed='Tabby';

-- SELECT cat_id, age FROM cats WHERE cat_id=age;

-- SELECT * FROM cats WHERE cat_id=age;


-- update cats set name = 'Jack' where name = 'Jackson';

-- update cats set breed = 'British Shorthair' where name = 'Ringo';

-- update cats set age = 12 where breed = 'Maine Coon';

-- delete from cats where age = 4;

-- delete  from cats where cat_id = age;

-- delete from cats;

-- select * from cats;


-- create database shirts_db;
-- use shirts_db;

-- create table shirts(
-- id int primary key auto_increment,
-- article varchar(50) not null,
-- color varchar(50) not null,
-- shirt_size varchar(5) not null,
-- last_worn int not null
-- );

-- insert into shirts(article,color,shirt_size,last_worn) values ('t-shirt', 'white', 'S', 10),
-- ('t-shirt', 'green', 'S', 200),
-- ('polo shirt', 'black', 'M', 10),
-- ('tank top', 'blue', 'S', 50),
-- ('t-shirt', 'pink', 'S', 0),
-- ('polo shirt', 'red', 'M', 5),
-- ('tank top', 'white', 'S', 200),
-- ('tank top', 'blue', 'M', 15);

-- insert into shirts(article,color,shirt_size,last_worn) values ('polo shirt', 'purple', 'M', 50);

-- select article,color,shirt_size,last_worn from shirts where shirt_size = 'M';

-- update shirts set shirt_size = 'L';

-- update shirts set last_worn = 0 where last_worn = 15;

-- delete from shirts where last_worn = 200;

-- delete from shirts where article = 'tank top';

-- delete from shirts;

-- drop table shirts;


use book_shop;

-- CREATE TABLE books 
-- 	(
-- 		book_id INT NOT NULL AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
-- 	);

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);



-- select concat(author_fname, ' ', author_lname) as author_name from books;

-- select substring(title, 1,15) from books;

-- SELECT 
--     CONCAT(SUBSTR(title, 1, 10), '...') AS short_title
-- FROM
--     books;


-- select replace (title, ' ', '-') from books;

-- select author_lname as forwards, reverse(author_lname) as backwards from books;
    

-- select concat(title, ' was released in ', released_year) as blurb from books;

-- select title, char_length(title) as 'character count' from books;
-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- select distinct author_fname from books;


-- select * from books order by author_fname;

-- select title, pages from books order by pages desc;

-- select title, pages from books order by 2 desc;

-- select author_lname, released_year, title from books order by author_lname, released_year;

-- select * from books order by released_year desc limit 5;

-- select * from books order by released_year desc limit 2,3;

-- select * from books where author_fname like '%da%';

-- select * from books where title like '%:%';

-- select * from books where author_fname like 'D____';

-- select * from books where title like '%\%%';

-- select * from books where title like '%stories%';

-- select title, pages from books order by pages desc limit 1;

-- select concat(title, '-', released_year) as summary from books order by released_year desc limit 3;

-- select title, author_lname from books where author_lname like '% %';

-- select title, released_year, stock_quantity from books order by stock_quantity limit 3;

-- select title, author_lname from books order by author_lname, title;

-- select upper(concat('my favourite author is ',author_fname,' ',author_lname)) as yell from books order by author_lname;


-- select count(*) from books;


-- select count(author_fname) from books;

-- select count(distinct author_fname) from books;

-- select count(distinct released_year) from books;

-- select count(*) from books where title like '%the%' ;

-- select author_lname, count(*) as 'total' from books group by author_lname order by total desc;

-- select min(released_year) from books;

-- select * from books where pages = (select max(pages) from books);

-- select title from books where released_year = (select min(released_year) from books);

-- select concat(author_fname, ' ', author_lname) as author_name, count(*) from books group by author_name;

-- select author_fname, author_lname, min(released_year) from books group by author_fname, author_lname;

-- select sum(pages) from books;

-- select author_lname, sum(pages) from books group by author_lname;

-- select released_year, avg(stock_quantity) from books group by released_year;

-- select sum(pages) from books;

-- select released_year, count(*) from books group by released_year;

-- select sum(stock_quantity) from books;

-- select author_fname, author_lname, avg(released_year) from books group by author_fname, author_lname;

-- select concat(author_fname, ' ', author_lname), pages from books where pages = (select max(pages) from books);

-- select released_year as year, count(*) as '# books', avg(pages) as 'avg pages' from books group by released_year order by released_year;

-- create table people(name varchar(100), birthdate date, birthtime time, birthdt datetime);
-- desc people;

-- insert into people values ('abc', '2020-12-12', '15:45:34', '2020-12-12 15:45:34');

-- select * from people;