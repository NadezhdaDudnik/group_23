
--1 Создать таблицу employees
CREATE TABLE employees (
   id serial not null,
   employee_name varchar(50) not null,
   PRIMARY KEY (id)
   );

--2 Наполнить таблицу employee 70 строками.
INSERT INTO employees (id, employee_name)  
VALUES (default, 'viktor'), (default, 'nadezhda'), (default, 'vlada'), (default, 'veta'), (default, 'vera'),
(default, 'sasha'), (default, 'sava'), (default, 'alina'), (default, 'katya'), (default, 'ivan'),
(default, 'elena'), (default, 'nadezhda'), (default, 'irina'), (default, 'ilya'), (default, 'kristina'),
(default, 'lada'), (default, 'platon'), (default, 'alina'), (default, 'roza'), (default, 'ivan'), 
(default, 'sofiya'), (default, 'stella'), (default, 'aleksey'), (default, 'sergey'), (default, 'mitya'),
(default, 'tina'), (default, 'dima'), (default, 'hloya'), (default, 'katya'), (default, 'stanislav'),
(default, 'anton'), (default, 'artem'), (default, 'vlada'), (default, 'veta'), (default, 'georgii'),
(default, 'vadim'), (default, 'jennifer'), (default, 'olga'), (default, 'yulia'), (default, 'andrey'),
(default, 'stas'), (default, 'alevtina'), (default, 'alena'), (default, 'timofei'), (default, 'vladislav'),
(default, 'albina'), (default, 'viktoria'), (default, 'yura'), (default, 'roman'), (default, 'tatiana'),
(default, 'nadya'), (default, 'mark'), (default, 'zhenya'), (default, 'nikta'), (default, 'tomas'),
(default, 'mariya'), (default, 'natasha'), (default, 'marina'), (default, 'azat'), (default, 'valriy'),
(default, 'mark'), (default, 'ira'), (default, 'alla'), (default, 'aidar'), (default, 'svetlana'),
(default, 'miron'), (default, 'farida'), (default, 'anna'), (default, 'mari'), (default, 'maksim');

select * from employees;

--3 Создать таблицу salary
CREATE TABLE salary (
   id serial not null,
   monthly_salary Int not null,
   PRIMARY KEY (id)
   );

--4 Наполнить таблицу salary 15 строками:
INSERT INTO salary (id, monthly_salary)  
VALUES (default, 1000), (default, 1100), (default, 1200), (default, 1300), (default, 1400), (default, 1500),
(default, 1600),(default, 1700),(default, 1800),(default, 1900),(default, 2000),(default, 2100),
(default, 2200),(default, 2300),(default, 2400),(default, 2500);

select * from salary;

--5 Создать таблицу employee_salary
CREATE TABLE employee_salary (
   id serial not null,
   employee_id Int not null unique,
   salary_id Int not null,
   PRIMARY KEY (id)
   );
  
--6 Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

INSERT INTO employee_salary (id, employee_id, salary_id)  
VALUES (default, 3, 7), (default, 1, 4), (default, 5, 9), (default, 40, 13), (default, 23, 4),
(default, 11, 2), (default, 52, 10), (default, 15, 13), (default, 26, 4), (default, 16, 1),
(default, 33, 7), (default, 72, 16), (default, 6, 16), (default, 100, 13), (default, 36, 2),
(default, 13, 7), (default, 7, 4), (default, 35, 8), (default, 41, 9), (default, 66, 3),
(default, 59, 4), (default, 78, 4), (default, 22, 12), (default, 29, 10), (default, 43, 5),
(default, 31, 3), (default, 34, 4), (default, 88, 9), (default, 90, 2), (default, 53, 14),
(default, 93, 5), (default, 38, 5), (default, 75, 8), (default, 79, 14), (default, 63, 8),
(default, 28, 6), (default, 45, 4), (default, 105, 9), (default, 82, 13), (default, 17, 15);

select * from employee_salary;


--7Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
CREATE TABLE roles (
   id serial not null,
   role_name Int not null unique,
   PRIMARY KEY (id)
   );

--8 Поменять тип столба role_name с int на varchar(30)  
Alter TABLE roles alter COLUMN role_name type VARCHAR(30);

--9 Наполнить таблицу roles 20 строками:
INSERT INTO roles (id, role_name)  
VALUES (default, 'Junior Python developer'), (default, 'Middle Python developer'),(default, 'Senior Python developer'),
(default, 'Junior Java developer'),(default, 'Middle Java developer'),(default, 'Senior Java developer'),
(default, 'Junior JavaScript developer'),(default, 'Middle JavaScript developer'),(default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'),(default, 'Middle Manual QA engineer'),(default, 'Senior Manual QA engineer'),
(default, 'Project Manager'),(default, 'Designer'),(default, 'HR'),
(default, 'CEO'),(default, 'Sales manager'),(default, 'Junior Automation QA engineer'),
(default, 'Middle Automation QA engineer'),(default, 'Senior Automation QA engineer');

select * from roles;

drop table roles;

--10 Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

CREATE TABLE roles_employee (
   id serial not null,
   employee_id Int not null unique,
   role_id Int not null,
   foreign key (employee_id)
   references employees(id),
   foreign key (role_id)
   references roles (id),
   PRIMARY KEY (id)
   );
   
--11 Наполнить таблицу roles_employee 40 строками
  INSERT INTO roles_employee (id, employee_id, role_id)  
VALUES (default, 3, 2), (default, 1, 4), (default, 5, 9), (default, 40, 13), (default, 23, 4),
(default, 11, 2), (default, 52, 10), (default, 15, 13), (default, 26, 4), (default, 16, 1),
(default, 33, 5), (default, 42, 16), (default, 6, 17), (default, 10, 18), (default, 36, 19),
(default, 13, 20), (default, 7, 1), (default, 35, 2), (default, 41, 4), (default, 66, 3),
(default, 59, 5), (default, 38, 6), (default, 22, 12), (default, 29, 10), (default, 43, 5),
(default, 31, 7), (default, 34, 8), (default, 44, 9), (default, 30, 2), (default, 53, 14),
(default, 49, 11), (default, 68, 12), (default, 55, 14), (default, 67, 15), (default, 63, 16),
(default, 28, 17), (default, 45, 20), (default, 46, 19), (default, 61, 18), (default, 17, 15);

select * from roles_employee;

drop table roles_employee
