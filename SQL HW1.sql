--Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);
select * from employees

--Наполнить таблицу employee 70 строками
insert into employees (employee_name)
values ('Tom'),
('Ric'),
('Natasha'),
('Sveta'),
('Egor'),
('Sasha'),
('Erika'),
('Ira'),
('Dana'),
('Dasha'),
('Aria'),
('Sasnsa'),
('Ksusha'),
('Vadimir'),
('Valera'),
('Lubov'),
('Kristina'),
('Kolya'),
('Rita'),
('Tolya'),
('Zuma'),
('Anya'),
('Gleb'),
('Izabel'),
('Karina'),
('Mick'),
('Murat'),
('Valic'),
('Masha'),
('Maria'),
('Alena'),
('Koras'),
('Abdel'),
('Amir'),
('Yasmin'),
('Galya'),
('Galiya'),
('Nata'),
('Nita'),
('Rimma'),
('Miron'),
('Djek'),
('Kostya'),
('Nelli'),
('Risa'),
('Dora'),
('Nupa'),
('Buba'),
('Boba'),
('Dima'),
('Emil'),
('Kamila'),
('Ewa'),
('Varya'),
('Gus'),
('Lera'),
('Inna'),
('Inessa'),
('Sara'),
('Djimm'),
('Roy'),
('Rur'),
('Igor'),
('Finiya'),
('Feta'),
('Sapa'),
('Samir'),
('Firuza'),
('Azat'),
('Sawa');

delete from employees
where id >= 71;

--Создать таблицу salary
create table salary(
	id serial primary key,
	monthly_salary Int not null
	);

select * from salary

--Наполнить таблицу salary 15 строками
insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

--Создать таблицу employee_salary
create table employee_salary(
	id Serial  primary key,
	employee_id Int not null unique,
	salary_id Int not null
);

select * from employee_salary 
--Наполнить таблицу employee_salary 40 строками
--в 10 строк из 40 вставить несуществующие employee_

insert into employee_salary (employee_id, salary_id)
values (1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30),
(71,31),
(85,32),
(105,33),
(90,34),
(96,35),
(150,36),
(89,37),
(87,38),
(88,39),
(74,40);

--Создать таблицу roles
create table roles(
id serial  primary key,
role_name int not null unique
);

select * from roles

--Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name
type varchar(30);

--Наполнить таблицу roles 20 строками
insert into roles (role_name)
values ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer'),
       ('Junior C++ developer'),
	   ('Middle C++ developer'),   
	   ('Senior C++ developer'),
	   ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Manager'),
	   ('HR'),
	   ('CEO'),
	   ('Team leader');

--Таблица roles_employee

create table roles_employee(
	id serial  primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)	
		references roles (id)
);

select * from  roles_employee
	  
--Наполнить таблицу roles_employee 40 строками	
  
	insert into roles_employee (employee_id, role_id)
	values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7), 
	   (8,8),
	   (9,9),
	   (10,7),
	   (11,11),
	   (12,15),
	   (13,5),
	   (14,14),
	   (15,15),
	   (16,11), 
	   (17,17),
	   (18,18),
	   (19,19),
	   (20,20),
	   (21,1),
	   (22,2),
	   (23,3),
	   (24,8),
	   (25,5),
	   (26,6),
	   (27,7), 
	   (28,8),
	   (29,9),
	   (30,4),
	   (31,1),
	   (32,7),
	   (33,3),
	   (34,10),
	   (35,5),
	   (36,6),
	   (37,8),
	   (38,8), 
	   (39,10),
	   (40,5);
	  
	  