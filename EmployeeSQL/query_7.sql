SELECT employees.emp_no,
employees.last_name,
employees.first_name,
deptemp.emp_no,
deptemp.dept_no,
departments.dept_no,
departments.dept_name
FROM employees
LEFT JOIN deptemp
ON employees.emp_no=deptemp.emp_no
INNER JOIN departments
ON departments.dept_no=deptemp.dept_no
WHERE departments.dept_name in ('Sales', 'Development');
