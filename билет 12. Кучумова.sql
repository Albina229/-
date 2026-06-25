create database if not exists b_db;
use b_db;

drop table if exists student;
drop table if exists manager;
drop table if exists client;
drop table if exists orders;

Create table if not exists students(
	ID int primary key AUTO_INCREMENT,
    Name varchar(30),
    City varchar(30),
    Product varchar(30),
    Amount int,
    Sum int
);

Create table if not exists manager(
	ID int primary key AUTO_INCREMENT,
    Name varchar(30),
    Otdel varchar(30),
    Month varchar(30),
    Amount int,
    Sum int
);

Create table if not exists client(
	CustomerID int primary key AUTO_INCREMENT not null,
    Клиент varchar(30) not null,
    Город varchar(30) not null,
    OrderID int not null,
    Дата varchar(30) not null,
    Сумма int not null
);

Create table if not exists orders(
	OrderID int not null,
    ProductID int not null,
    Товар varchar(30) not null,
    Категория varchar(30) not null,
    Цена int not null,
    Количество int not null
);

insert into orders (OrderID,ProductID,Товар,Категория,Цена,Количество) values
(101, 201, "Товар 1", 101, 500, 1),
(102, 202, "Товар 2", 102, 1000, 2),
(103, 203, "Товар 3", 103, 1500, 3),
(104, 204, "Товар 4", 104, 2000, 4),
(105, 205, "Товар 5", 105, 2500, 5),
(106, 206, "Товар 6", 106, 3000, 6),
(107, 207, "Товар 7", 10, 3500, 7),
(108, 208, "Товар 8", 108, 4000, 8),
(109, 209, "Товар 9", 109, 4500, 9),
(110, 210, "Товар 10", 110, 5000, 10);

insert into client (CustomerID,Клиент,Город,OrderID,Дата,Сумма) values
(1, "Клиент 1", "Город 2", "101", "2026-05-01", 1000),
(2, "Клиент 2", "Город 3", "102", "2026-05-02", 2000),
(3, "Клиент 3", "Город 4", "103", "2026-05-03", 3000),
(4, "Клиент 4", "Город 1", "104", "2026-05-04", 4000),
(5, "Клиент 5", "Город 2", "105", "2026-05-05", 5000),
(6, "Клиент 6", "Город 3", "106", "2026-05-06", 6000),
(7, "Клиент 7", "Город 4", "107", "2026-05-07", 7000),
(8, "Клиент 8", "Город 1", "108", "2026-05-08", 8000),
(9, "Клиент 9", "Город 2", "109", "2026-05-09", 9000),
(10, "Клиент 10", "Город 3", "110", "2026-05-10", 10000);

insert into manager (ID,Name,Otdel,Month,Amount,Sum) values
(1, "Менеджер 2", "Отдел 2", "2026-01", 2, 1500),
(2, "Менеджер 3", "Отдел 3", "2026-02", 4, 3000),
(3, "Менеджер 4", "Отдел 1", "2026-03", 6, 4500),
(4, "Менеджер 1", "Отдел 2", "2026-04", 8, 6000),
(5, "Менеджер 2", "Отдел 3", "2026-05", 10, 7500),
(6, "Менеджер 3", "Отдел 1", "2026-06", 12, 9000),
(7, "Менеджер 4", "Отдел 2", "2026-07", 14, 10500),
(8, "Менеджер 1", "Отдел 3", "2026-08", 16, 12000),
(9, "Менеджер 2", "Отдел 1", "2026-09", 18, 13500),
(10, "Менеджер 3", "Отдел 2", "2026-10", 20, 15000);

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
    Having sum(Sum) > 15000
);
