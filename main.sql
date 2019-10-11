-- I learned not to capitalize table names this assignment, quotations beocome very quirky after so long
-- I never want to use Join again BUT if I have to I will know exactly how to do so
-- There's a very cool Datatype called Date that makes comparing dates very easy thank you SQL gods

-- -- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
-- SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary FROM "Employees"
-- JOIN "Salaries" ON "Salaries".emp_no = "Employees".emp_no ;

-- -- 2. List employees who were hired in 1986.
-- SELECT * FROM "Employees"
-- WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- -- 3. List the manager of each department with the following information: 
-- -- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

-- SELECT "Departments".dept_no, "Departments".dept_name, "Dept_manager".emp_no AS manager_number, "Employees".last_name, "Employees".first_name, "Dept_manager".from_date, "Dept_manager".to_date FROM "Departments"
-- JOIN "Dept_manager" ON "Dept_manager".dept_no = "Departments".dept_no
-- JOIN "Employees" ON "Employees".emp_no = "Dept_manager".emp_no ;

-- -- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- SELECT "Dept_emps".emp_no AS employee_number, "Employees".last_name, "Employees".first_name, "Departments".dept_name FROM "Dept_emps"
-- JOIN "Employees" ON "Employees".emp_no = "Dept_emps".emp_no
-- JOIN "Departments" ON "Departments".dept_no = "Dept_emps".dept_no;

-- -- 5. List all employees whose first name is "Hercules" and last names begin with "B."
-- SELECT first_name, last_name FROM "Employees"
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- -- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- SELECT "Dept_emps".emp_no AS employee_number, "Employees".last_name, "Employees".first_name, "Departments".dept_name FROM "Dept_emps"
-- JOIN "Departments" ON "Dept_emps".dept_no = "Departments".dept_no
-- JOIN "Employees" ON "Dept_emps".emp_no = "Employees".emp_no
-- WHERE "Departments".dept_name = 'Sales';

-- -- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- SELECT "Dept_emps".emp_no AS employee_number, "Employees".last_name, "Employees".first_name, "Departments".dept_name FROM "Dept_emps"
-- JOIN "Departments" ON "Dept_emps".dept_no = "Departments".dept_no
-- JOIN "Employees" ON "Dept_emps".emp_no = "Employees".emp_no
-- WHERE "Departments".dept_name = 'Sales' OR "Departments".dept_name = 'Development';

-- -- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- SELECT last_name, COUNT(last_name) AS "count_of_last_name" FROM "Employees"
-- GROUP BY last_name ORDER BY COUNT(last_name) DESC;

SELECT * FROM "Employees" WHERE emp_no = 499942
-- Whatashame