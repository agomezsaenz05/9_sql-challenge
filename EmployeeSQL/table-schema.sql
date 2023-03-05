CREATE TABLE employees (
		emp_no INT PRIMARY KEY NOT NULL,
		emp_title_id VARCHAR(50) NOT NULL,
		emp_birth_date DATE NOT NULL,
		first_name VARCHAR(50) NOT NULL,
		last_name VARCHAR(50) NOT NULL,
		sex VARCHAR(1) NOT NULL,
		hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(50) PRIMARY KEY NOT NULL,
	title VARCHAR(50) NOT NULL
);

CREATE TABLE dept_emp (
		emp_no INT PRIMARY KEY NOT NULL,
		dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE salaries (
		emp_no INT PRIMARY KEY NOT NULL,
		salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE dept_manager (
		dept_no INT PRIMARY KEY NOT NULL,
		emp_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

