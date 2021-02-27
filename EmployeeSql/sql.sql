-- Delete these tables if they already exist
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create new tables
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

CREATE TABLE dept_emp (
    id SERIAL PRIMARY KEY,
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    id SERIAL PRIMARY KEY,
    dept_no VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    id SERIAL PRIMARY KEY,
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT
);

-- 1. List employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name,
employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name