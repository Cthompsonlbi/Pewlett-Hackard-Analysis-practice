--Module 7 Challenge
--DROP TABLE retirement_titles;
--first part of deliverable 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
--INTO retirement_titles
From employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows 2nd part of deliverable 1
DROP TABLE unique_titles

SELECT DISTINCT ON (ti.emp_no) ti.emp_no,
ti.first_name,
ti.last_name,
ti.title
--INTO unique_titles
FROM retirement_titles as ti
ORDER BY ti.emp_no, to_date DESC;

--third part of deliverable 1
SELECT COUNT (ut.emp_no), ut.title
--INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT DESC;

---Second Deliverable
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (t.to_date = '9999-01-01')
	 AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- --Amount of retirees per department
-- SELECT COUNT(ce.emp_no), 
-- 	--de.dept_no, 
-- 	d.dept_name
-- --INTO retirement_dept
-- FROM current_emp as ce
-- INNER JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
-- INNER JOIN departments as d
-- ON de.dept_no = d.dept_no
-- INNER JOIN employees as e
-- ON e.emp_no = ce.emp_no
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- 	 AND (de.to_date = '9999-01-01')
-- GROUP BY d.dept_name
-- ORDER BY d.dept_name;

-- SELECT COUNT(e.emp_no), 
-- 	--de.dept_no, 
-- 	d.dept_name
-- --INTO retirement_dept
-- FROM employees as e
-- INNER JOIN current_emp as ce
-- ON e.emp_no = ce.emp_no
-- INNER JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
-- INNER JOIN departments as d
-- ON de.dept_no = d.dept_no
-- WHERE --(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- 	(de.to_date = '9999-01-01')
-- GROUP BY d.dept_name
-- ORDER BY d.dept_name;

SELECT COUNT (ri.emp_no),
	d.dept_name
INTO retirement_by_dept
FROM retirement_info as ri
INNER JOIN retirement_titles as rt
ON ri.emp_no = rt.emp_no
INNER JOIN dept_emp as de
ON de.emp_no = rt.emp_no
INNER JOIN departments as d
ON d.dept_no = de.dept_no
WHERE (rt.to_date = '9999-01-01')
GROUP BY d.dept_name
ORDER BY COUNT desc;

SELECT COUNT (me.emp_no),
	d.dept_name
--INTO Mentorship_by_dept
FROM mentorship_eligibility as me
INNER JOIN dept_emp as de
ON me.emp_no = de.emp_no
INNER JOIN departments as d
ON d.dept_no = de.dept_no
WHERE (me.to_date = '9999-01-01')
GROUP BY d.dept_name
ORDER BY COUNT desc;
