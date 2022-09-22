-- create db
CREATE DATABASE employeedb;

-- use db

USE employeedb;   -- слово DATABASE в этой строчке было лишним

-- create table
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT NOT NULL
);

-- insert table
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales', 30000);
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting', 50000);
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales', 70000);
INSERT INTO EMPLOYEE VALUES (0004, 'Ivan', 'IT', 100000);
INSERT INTO EMPLOYEE VALUES (0005, 'Anna', 'IT', 40000);
INSERT INTO EMPLOYEE VALUES (0006, 'Mark', 'Management', 85000);
INSERT INTO EMPLOYEE VALUES (0007, 'Johny', 'Content', 66000);
INSERT INTO EMPLOYEE VALUES (0008, 'Igor', 'Sales', 90000);

-- fetch 
SELECT * FROM EMPLOYEE;

-- ------------------HOME WORK 
-- 1. отсортируй данные по зарплате 
SELECT * FROM EMPLOYEE order by salary;
-- 2 отсортируй данные по зарплате от большего к меньшему
SELECT * FROM EMPLOYEE order by salary DESC;
-- 3 выведи первые 3 строчки таблицы
SELECT * FROM EMPLOYEE limit 3;
-- 4 выведи последние 3 строчки таблицы
SELECT * FROM EMPLOYEE ORDER BY empId DESC limit 3;
-- 5 выведи данные, где в названии отделов встречается буква “t”
SELECT * FROM EMPLOYEE where name like "%t%";
-- 6 подсчитай длину названия отдела “Management”
SELECT name, length(name) FROM EMPLOYEE;
-- 7 подсчитай сумму всех зарплат сотрудников
select sum(salary) FROM EMPLOYEE;
-- 8 узнай среднюю зарплату сотрудников
SELECT avg(salary) FROM EMPLOYEE;
-- 9 округли среднюю зарплату сотрудников
SELECT round(avg(salary)) FROM EMPLOYEE;
-- 10 узнай минимальную и максимальную зарплату 
SELECT min(salary), max(salary) FROM EMPLOYEE;
-- 11 подсчитай количество сотрудников
SELECT count(*) FROM EMPLOYEE;
-- 12 выведи количество сотрудников в каждом отделе
SELECT dept, sum(salary) FROM EMPLOYEE group by dept;
-- 13 выведи отделы, где минимальная зарплата больше 40 000
SELECT dept, salary FROM EMPLOYEE where salary > 40000 group by dept HAVING salary ORDER BY dept;




