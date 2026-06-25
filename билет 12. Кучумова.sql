create database if not exists b_db;
use b_db;

drop table if exists students;

Create table if not exists students(
	ID int primary key AUTO_INCREMENT,
    Name varchar(30),
    City varchar(30),
    Product varchar(30),
    Amount int,
    Sum int
);

insert into students (ID,Name,City,Product,Amount,Sum) values
(1, "Студент 1", "Город 2", "Товар 1", 2, 2400),
(2, "Студент 2", "Город 3", "Товар 2", 3, 3600),
(3, "Студент 3", "Город 4", "Товар 3", 4, 4800),
(4, "Студент 4", "Город 5", "Товар 4", 5, 6000),
(5, "Студент 5", "Город 1", "Товар 5", 6, 7200),
(6, "Студент 6", "Город 2", "Товар 6", 7, 8400),
(7, "Студент 7", "Город 3", "Товар 7", 8, 9600),
(8, "Студент 8", "Город 4", "Товар 8", 9, 10800),
(9, "Студент 9", "Город 5", "Товар 9", 10, 12000),
(10, "Студент 10", "Город 1", "Товар 10", 11, 13200);

select Name, City, Product 
from students
where City in (
	select City
    from students
    group by City
    Having sum(Sum) > 15555
);
