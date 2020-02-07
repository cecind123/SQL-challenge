In this assignment, I design tables to hold employee data provided in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 

There are 3 components of this project:
    
    1. Data Modeling
      -Inspect the CSVs and sketch out an ERD of the tables.

    2. Data Engineering
      -Use the information to create a table schema for each of the six CSV files.
      -Import each CSV file into the corresponding SQL table.

    3. Data Analysis
      -Once we have a complete database, do the following:
          -List the following details of each employee: employee number, last name, first name, gender, and salary.
          -List employees who were hired in 1986.
          -List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
          -List the department of each employee with the following information: employee number, last name, first name, and department name.
          -List all employees whose first name is "Hercules" and last names begin with "B."
          -List all employees in the Sales department, including their employee number, last name, first name, and department name.
          -List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
          -In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
          
          
    At the end, I import the SQL database into Pandas using SQLAlchemy to: 
        -Create a histogram to visualize the most common salary ranges for employees.
        -Create a bar chart of average salary by title.
