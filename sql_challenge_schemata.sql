--Drop Tables if they exist
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--Create the tables needed
CREATE TABLE departments(
	dept_no VARCHAR(20) NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL	
);

CREATE TABLE dept_emp(
	emp_no SERIAL NOT NULL,
	dept_no VARCHAR(20)
);

CREATE TABLE dept_manager(
	"dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL
);

CREATE TABLE employees(
	"emp_no" INT NOT NULL PRIMARY KEY,
    "emp_title" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" char NOT NULL,
    "hire_date" DATE NOT NULL
);

SET datestyle ='ISO, MDY';

CREATE TABLE salaries(
	"emp_no" INT NOT NULL,
    "salary" INT NOT NULL
);

CREATE TABLE titles(
	"title_id" VARCHAR NOT NULL PRIMARY KEY,
    "title" VARCHAR NOT NULL
);
--Import the csv data
--view the data

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;