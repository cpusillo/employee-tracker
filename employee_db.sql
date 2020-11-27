-- CREATE DATABASE employees_db;

use employees_db;

-- Create employee table
CREATE TABLE employee (
id integer auto_increment not null,
first_name varchar(30),
last_name varchar(30),
role_id integer,
primary key (id)
);

-- Insert data into employee table
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Jamie", "Pina", 3);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Valerie", "Persaud", 4);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Justine", "O'Casey", 5);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Liz", "White", 6);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Jolene", "Kinny", 7);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Mary", "Fera", 8);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Evelyn", "Grimes", 9);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Shavon", "Taylor", 10);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Ronda", "Brown", 11);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Maria", "Fernandez", 12);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Rosa", "Gerause", 13);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Lucy", "Jones", 14);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Emma", "Stoner", 15);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Anna", "Deloise", 16);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Daine", "Lennard", 17);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Patricia", "O'Shea", 18);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Isabella", "Pitha", 19);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Samantha", "Hubb", 20);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Helena", "Van Ackerson", 20);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Sue", "Marx", 21);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Tonya", "Fairbanks", 21);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Leah", "Peabody", 22);

-- Create department table
CREATE TABLE department (
id integer auto_increment not null,
name varchar(30),
primary key (id)
);

-- Insert data into department table
INSERT INTO department (name)
VALUES ("AP");

INSERT INTO department (name)
VALUES ("AR");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("HR");

INSERT INTO department (name)
VALUES ("IT");

INSERT INTO department (name)
VALUES ("Legal");

INSERT INTO department (name)
VALUES ("Operations");

INSERT INTO department (name)
VALUES ("Production");

INSERT INTO department (name)
VALUES ("Executive");

-- Create role table
CREATE TABLE role (
id integer auto_increment not null,
title varchar(30),
salary decimal (10,2),
department_id integer,
primary key (id)
);

-- Insert data into role table
INSERT INTO role (title, salary, department_id)
VALUES ("CFO", 98000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Director of Finance", 97000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Sr. Accountant", 67000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 59000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Jr. Accountant", 48000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("AP Specialist", 44000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("AR Specialist", 44000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("HR Specialist", 50000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("HR Assistant", 38000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("HR Manager", 64000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("CAO", 124000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("CIO", 112000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("Director of IT", 89000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("System Administrator", 78000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("IT Technician", 47000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("In House Counsel", 82000, 6);

INSERT INTO role (title, salary, department_id)
VALUES ("Contracts Manager", 85000, 6);

INSERT INTO role (title, salary, department_id)
VALUES ("COO", 110000, 7);

INSERT INTO role (title, salary, department_id)
VALUES ("Operations Assistant", 33000, 7);

INSERT INTO role (title, salary, department_id)
VALUES ("Operations Specialist", 42000, 7);

INSERT INTO role (title, salary, department_id)
VALUES ("Quality Engineer", 63000, 8);

INSERT INTO role (title, salary, department_id)
VALUES ("Production Manager", 73000, 8);

INSERT INTO role (title, salary, department_id)
VALUES ("CEO", 1, 9);

 -- View our data
select * from department;

select * from role;

select * from employee;

-- Create some joins
SELECT e.first_name, e.last_name, r.title, r.salary, d.name FROM employee e
INNER JOIN role r on e.role_id = r.id
INNER JOIN department d on r.department_id = d.id
ORDER BY d.name;