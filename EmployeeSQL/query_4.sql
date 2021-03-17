SELECT employees.emp_no,
employees.last_name,
employees.first_name,
deptemp.dept_no,
deptemp.emp_no,
departments.dept_name
FROM employees
INNER JOIN deptemp ON employees.emp_no=deptemp.emp_no
INNER JOIN departments ON deptemp.dept_no=deptemp.dept_no