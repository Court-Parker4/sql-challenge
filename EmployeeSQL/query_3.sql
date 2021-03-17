SELECT deptmanager.dept_no,
departments.dept_name,
deptmanager.emp_no,
employees.last_name,
employees.first_name
FROM deptmanager
LEFT JOIN departments
ON deptmanager.dept_no = departments.dept_no
LEFT JOIN employees
ON deptmanager.emp_no = employees.emp_no