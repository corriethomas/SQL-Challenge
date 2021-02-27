-- Delete these tables if they already exist
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create new tables
CREATE TABLE departments (
    dept_no VARCHAR(30) PRIMARY KEY,
    dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(30),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(30),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT
);

CREATE TABLE titles (
    title_id VARCHAR(30) PRIMARY KEY,
    title VARCHAR(30)
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(30),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(30),
    hire_date DATE
);

CREATE TABLE salaries (
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT
);

