--List the following details of each employee: employee number, last name, first name, sex, and salary.
--check count of joined table to make sure I have accurate count of employees  
select count(0) 
from employees tbl 
JOIN salaries tbl2 
on tbl.emp_no = tbl2.emp_no 


select tbl.emp_no, tbl.last_name, tbl.first_name, tbl.sex, tbl2.salary 
from employees tbl 
JOIN salaries tbl2 
on tbl.emp_no = tbl2.emp_no 

--List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees 
where (select extract(YEAR from hire_Date))= 1986
order by hire_date 


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select tbl.dept_no, tbl2.dept_name, tbl.emp_no, tbl3.last_name, tbl3.first_name 
from dept_manager tbl 
JOIN departments tbl2 
on tbl.dept_no = tbl2.dept_no 
JOIN employees tbl3
on tbl.emp_no = tbl3.emp_no


--List the department of each employee with the following information: employee number, last name, first name, and department name.

select tbl.emp_no, tbl.last_name, tbl.first_name, dep.dept_name 
from employees tbl 
JOIN dept_emp tbl2 
on tbl.emp_no = tbl2.emp_no 
JOIN departments dep
on tbl2.dept_no = dep.dept_no 



--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex 
from employees 
where first_name = 'Hercules'
and last_name like ('B%')


--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select distinct dept_name 
from departments


select tbl.emp_no, tbl.last_name, tbl.first_name, dep.dept_name 
from employees tbl 
JOIN dept_emp tbl2 
on tbl.emp_no = tbl2.emp_no 
JOIN departments dep 
on tbl2.dept_no = dep.dept_no 
where dep.dept_name = 'Sales'



--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select distinct dept_name 
from departments


select tbl.emp_no, tbl.last_name, tbl.first_name, dep.dept_name 
from employees tbl 
JOIN dept_emp tbl2 
on tbl.emp_no = tbl2.emp_no 
JOIN departments dep 
on tbl2.dept_no = dep.dept_no 


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(*)
from employees
group by last_name 
order by count(*) desc 

