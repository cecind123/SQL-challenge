DROP TABLE IF EXISTS Department CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Department_Employee CASCADE;
DROP TABLE IF EXISTS Department_Manager CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;

-- Department CSV
CREATE TABLE Department (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
   PRIMARY KEY (dept_no),
   UNIQUE      (dept_name)
);

-- Employees CSV
CREATE TABLE Employees (
   emp_no INT   NOT NULL,
   birth_date VARCHAR   NOT NULL,
   first_name VARCHAR   NOT NULL,
   last_name VARCHAR   NOT NULL,
   gender VARCHAR   NOT NULL,
   hire_date VARCHAR   NOT NULL,
   PRIMARY KEY (emp_no)
);

-- Department Emp CSV
CREATE TABLE Department_Employee (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES Employees   (emp_no),
   FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
   PRIMARY KEY (emp_no,dept_no)
);

-- Department Manager CSV
CREATE TABLE Department_Manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
  FOREIGN KEY (emp_no)  REFERENCES Employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
  PRIMARY KEY (emp_no,dept_no)
);

-- Salaries CSV
CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
   PRIMARY KEY (emp_no, from_date)
);


-- Titles CSV
CREATE TABLE Titles (
    emp_no INT   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
   PRIMARY KEY (emp_no,title, from_date)
);

--Copy in CSVs
COPY department(dept_no,dept_name) 
FROM '/Users/ceciliadang/GTATL201908DATA3/09-SQL/Homework/Instructions/data/departments.csv' 
DELIMITER ',' CSV HEADER;

COPY employees(emp_no,birth_date,first_name,last_name,gender,hire_date) 
FROM '/Users/ceciliadang/GTATL201908DATA3/09-SQL/Homework/Instructions/data/employees.csv' 
DELIMITER ',' CSV HEADER;

COPY department_employee(emp_no,dept_no,from_date,to_date) 
FROM '/Users/ceciliadang/GTATL201908DATA3/09-SQL/Homework/Instructions/data/dept_emp.csv' 
DELIMITER ',' CSV HEADER;

COPY department_manager(dept_no,emp_no,from_date,to_date) 
FROM '/Users/ceciliadang/GTATL201908DATA3/09-SQL/Homework/Instructions/data/dept_manager.csv' 
DELIMITER ',' CSV HEADER;

COPY salaries(emp_no,salary,from_date,to_date) 
FROM '/Users/ceciliadang/GTATL201908DATA3/09-SQL/Homework/Instructions/data/salaries.csv' 
DELIMITER ',' CSV HEADER;

COPY titles(emp_no,title,from_date,to_date) 
FROM '/Users/ceciliadang/GTATL201908DATA3/09-SQL/Homework/Instructions/data/titles.csv' 
DELIMITER ',' CSV HEADER;