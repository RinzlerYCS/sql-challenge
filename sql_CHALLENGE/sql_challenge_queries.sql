
--List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, S.salary 
FROM "Employees" as e 
INNER JOIN "Salaries" as S 
ON e.emp_no = S.emp_no

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name (2 points)

SELECT D.dept_no, DE.dept_name, D.emp_no, E.last_name, E.first_name 
FROM "Dept_manager" as D 
INNER JOIN "Departments" as DE 
ON D.dept_no = DE.dept_no
INNER JOIN "Employees" as E
ON E.emp_no = D.emp_no

--List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name (2 points)

SELECT Demp.dept_no, E.emp_no, E.last_name, E.first_name, D.dept_name
FROM "Employees" as E
INNER JOIN "Dept_emp" as Demp
ON E.emp_no = Demp.emp_no
INNER JOIN "Departments" as D
ON D.dept_no = Demp.dept_no

--List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B (2 points)

SELECT first_name, last_name, sex 
FROM "Employees"
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

--List each employee in the Sales(d007) department, including their employee number, 
--last name, and first name (2 points)

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM "Employees" as E 
INNER JOIN "Dept_emp"as DEMP
ON E.emp_no = DEMP.emp_no
INNER JOIN "Departments" as D
ON D.dept_no = DEMP.dept_no
WHERE D.dept_name = 'Sales'
SELECT * FROM "Departments"

--List each employee in the Sales and Development departments, including 
--their employee number, last name, first name, and department name (4 points)

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM "Employees" as E 
INNER JOIN "Dept_emp"as DEMP
ON E.emp_no = DEMP.emp_no
INNER JOIN "Departments" as D
ON D.dept_no = DEMP.dept_no
WHERE D.dept_name in  ('Sales','Development') 


--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name) (4 points)

SELECT last_name, count(*) as num
FROM "Employees"
GROUP BY last_name
ORDER BY num DESC

