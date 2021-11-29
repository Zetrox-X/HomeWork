--1.	������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

CREATE TABLE employees(
	id serial PRIMARY KEY,
	employee_name varchar(50) NOT NULL
);

--2.	��������� ������� employee 70 ��������.

insert into employees(employee_name)
values('Geronimo'),
	('���� �����'),
	('�����'),
	('Mr.Ilyasov'),
	('�������� ������'),
	('�����'),
	('�������� ���������'),
	('@korotushak96'),
	('@Nikita_Nikita'),
	('Tatsiana_Kulaha'),
	('Viktoryia Sikirytskaya'),
	('������ �������'),
	('Miroslav'),
	('@olimpwulf'),
	('@SeregaRomanich'),
	('������� ������'),
	('Inga Vasylenko'),
	('@Olga_Varona'),
	('SVETLANA'),
	('Kasinski Dmitriy'),
	('������ @brkt'),
	('��������� @Annchy'),
	('������ �������'),
	('Fiaskou_Aliaksandr_Padawans'),
	('Svetlana Sukhoivan'),
	('Valeria Shirokova'),
	('Kalipsou'),
	('Yaroslav Kozakov'),
	('�������� �'),
	('��������� �������'),
	('���� ��������'),
	('����� �������'),
	('����� ������'),
	('Evgeniya Paleeva'),
	('Tim Dambrowski'),
	('Ivan_Nik'),
	('���������� �����'),
	('����� ���������'),
	('Marina_Zharova'),
	('la_mula'),
	('Elena Kernoga'),
	('��������� ���������'),
	('���������� �������'),
	('������������ �����'),
	('Denis Knotko'),
	('Anastasia'),
	('Ekaterina Sharonina'),
	('��� ��������'),
	('Artem'),
	('Kristina Tsurko'),
	('������ @M4e5tRO'),
	('��������� ��������� Fly Kavasima'),
	('�������� ����������'),
	('Omurbek Rysbaev'),
	('Oleksii Kralin'),
	('Alisa Shevchenko'),
	('�������� ��������'),
	('������� ����'),
	('������ ������'),
	('����� ���'),
	('������� ������'),
	('Kladkova Ekaterina'),
	('������'),
	('������'),
	('������� ����'),
	('Kugach_Inna'),
	('Maksimov_Vladimir_Group_24'),
	('Ksendzov_Vas'),
	('Lidia Kit'),
	('������ ��������');


--3.	������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);



--4.	��������� ������� salary 15 ��������:
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


--5.	������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--6.	��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

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
	
--7.	������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

	create table roles (
	id serial primary key,
	role_name int not null unique
);


--8.	�������� ��� ������ role_name � int �� varchar(30)

alter table roles
alter column role_name type varchar(30);


--9.	��������� ������� roles 20 �������� (� ����������)

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
	
		
--10.	������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
	
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
	references employees(id),
	foreign key (role_id)
	references roles(id)
);
		

--11.	��������� ������� roles_employee 40 ��������:

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
		
