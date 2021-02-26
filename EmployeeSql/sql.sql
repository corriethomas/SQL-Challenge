-- Delete these tables if they already exist
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

-- Create new tables
CREATE TABLE departments (
    dept_no VARCHAR(30),
    dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(30)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(30),
    emp_no INT
);

CREATE TABLE employees (
    emp_no INT,
    emp_title_id VARCHAR(30),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(30)
    hire_date DATE
);

CREATE TABLE salaries (
    emp_no INT,
    salary INT
);

CREATE TABLE titles (
    title_id VARCHAR(30),
    title VARCHAR(30)
);