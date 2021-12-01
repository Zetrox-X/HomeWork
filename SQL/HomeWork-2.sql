--1.	Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

CREATE TABLE employees(
	id serial PRIMARY KEY,
	employee_name varchar(50) NOT null 
);

--2.	Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values('Geronimo'),
	('Лена Голуб'),
	('Джефф'),
	('Mr.Ilyasov'),
	('Аракчеев Никита'),
	('Айдар'),
	('Лапоухов Александр'),
	('@korotushak96'),
	('@Nikita_Nikita'),
	('Tatsiana_Kulaha'),
	('Viktoryia Sikirytskaya'),
	('Ленинг Алексей'),
	('Miroslav'),
	('@olimpwulf'),
	('@SeregaRomanich'),
	('Алексей Ткачев'),
	('Inga Vasylenko'),
	('@Olga_Varona'),
	('SVETLANA'),
	('Kasinski Dmitriy'),
	('Михаил @brkt'),
	('Анастасия @Annchy'),
	('Максим Аксенов'),
	('Fiaskou_Aliaksandr_Padawans'),
	('Svetlana Sukhoivan'),
	('Valeria Shirokova'),
	('Kalipsou'),
	('Yaroslav Kozakov'),
	('Светлана Б'),
	('Екатерина Кузьмич'),
	('Юлия Лымарева'),
	('Алеся Дедовец'),
	('Бойко Андрей'),
	('Evgeniya Paleeva'),
	('Tim Dambrowski'),
	('Ivan_Nik'),
	('Андрусенко Захар'),
	('Вадим Тараненко'),
	('Marina_Zharova'),
	('la_mula'),
	('Elena Kernoga'),
	('Сократова Екатерина'),
	('Варшавская Людмила'),
	('Трапезникова Елена'),
	('Denis Knotko'),
	('Anastasia'),
	('Ekaterina Sharonina'),
	('Яна Литорина'),
	('Artem'),
	('Kristina Tsurko'),
	('Михаил @M4e5tRO'),
	('Елизавета Короткова Fly Kavasima'),
	('Элеонора Армизонова'),
	('Omurbek Rysbaev'),
	('Oleksii Kralin'),
	('Alisa Shevchenko'),
	('Багненко Владимир'),
	('Лебедев Олег'),
	('Максим Глебов'),
	('Федор Шип'),
	('Евгений Палата'),
	('Kladkova Ekaterina'),
	('Жухоук'),
	('ухожук'),
	('Креатив прет'),
	('Kugach_Inna'),
	('Maksimov_Vladimir_Group_24'),
	('Ksendzov_Vas'),
	('Lidia Kit'),
	('Сергей Безпалов');


--3.	Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);



--4.	Наполнить таблицу salary 15 строками:
-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
-- 2400
-- 2500

insert into salary(monthly_salary)
values ('1000'),
	('1100'),
	('1200'),
	('1300'),
	('1400'),
	('1500'),
	('1600'),
	('1700'),
	('1800'),
	('1900'),
	('2000'),
	('2100'),
	('2200'),
	('2300'),
	('2400'),
	('2500');


--5.	Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--6.	Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 1),
		(18, 5),
		(19, 7),
		(20, 2),
		(21, 14),
		(22, 9),
		(23, 6),
		(24, 8),
		(25, 3),
		(26, 7),
		(27, 15),
		(28, 12),
		(29, 9),
		(30, 5),
		(71, 2),
		(72, 3),
		(73, 7),
		(74, 8),
		(75, 16),
		(76, 14),
		(77, 2),
		(78, 1),
		(79, 7),
		(80, 3);
	
--7.	Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

	create table roles (
	id serial primary key,
	role_name int not null unique
);


--8.	Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);


--9.	Наполнить таблицу roles 20 строками (о профессиях)

insert into roles(role_name)
values ('Python_Developer_Junior'),
		('Python_Developer_Middle'),
		('Python_Developer_Senior'),
		('Java_Developer_Junior'),
		('Java_Developer_Middle'),
		('Java_Developer_Senior'),
		('Js_Developer_Junior'),
		('Js_Developer_Middle'),
		('Js_Developer_Senior'),
		('QA_Junior'),
		('QA_Middle'),
		('QA_Senior'),
		('Project_Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales_Manager'),
		('Automation_QA_Junior'),
		('Automation_QA_Middle'),
		('Automation_QA_Senior');
	
		
--10.	Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
	references employees(id),
	foreign key (role_id)
	references roles(id)
);
		

--11.	Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values
	(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 1),
		(18, 5),
		(19, 7),
		(20, 2),
		(21, 14),
		(22, 9),
		(23, 6),
		(24, 8),
		(25, 3),
		(26, 7),
		(27, 15),
		(28, 12),
		(29, 19),
		(30, 5),
		(37, 2),
		(42, 3),
		(44, 17),
		(57, 18),
		(58, 16),
		(59, 14),
		(60, 2),
		(61, 1),
		(64, 7),
		(68, 20);
		
