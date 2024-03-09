Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary_amount
From employees as e
inner join salaries as s
on e.emp_no = s.emp_no;

--Question1
Select s.emp_no, e.last_name, e.first_name, e.sex, s.salary_amount
from employees as e, salaries as s
where e.emp_no = s.emp_no;


--Question2
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';


--Question3
Select dm.dep_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_managers as dm 
join departments as d
on dm.dep_no = d.dept_no
join employees as e on dm.emp_no = e.emp_no;



--Question4
Select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
join dept_emp as de 
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no;


--Question5
Select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';


--Question6
Select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
join dept_emp as de 
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';

--Question7
Select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
join dept_emp as de 
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no
where d.dept_name in ('Sales','Development');


--Question8
SELECT
	e.last_name,
	COUNT (*) AS emp_count
FROM
	employees as e
GROUP BY
	e.last_name 
	order by emp_count desc;

