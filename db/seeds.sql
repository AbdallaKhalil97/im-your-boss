DROP DATABASE IF EXISTS employeetrack_db;

CREATE DATABASE employeetrack_db;

USE employeetrack_db;

CREATE TABLE departments(
    id INT AUTO_INCREMENT,
    NAME VARCHAR (30),
    manager_id INT UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE roles(
    id INT AUTO_INCREMENT
    title VARCHAR(30)
    salary decimal
    department_id INT
    PRIMARY KEY (id)
    Foreign KEY (department_id) references departments (id)
);

CREATE TABLE employees(
    id INT AUTO_INCREMENT
    first_name VARCHAR(30)
    last_name VARCHAR(30)
    role_id INT
    manager_id INT
    department VARCHAR(30)
    PRIMARY key (id)
    Foreign key (role_id) references roles (id)
    Foreign key (manager_id) references departments(manager_id)
);

insert into roles (title,salary,department_id)
values ("customer service",200000,1),
("IT", 300000,  2),
("engineer",400000, 3),
("coordinator",500000, 4),
("CEO",600000, 5);

insert into employees (first_name,last_name,role_id)
values ("Kim", "Kindle", 5);

insert into employees (first_name,last_name,role_id,manager_id)
values ("cindy","coleman",1,1)
("ivan","iman",2,2)
("emily","engholm",3,3)
("chris","kordy",4,4)



