--Module 7 Challenge
--DROP TABLE retirement_titles;
--first part of deliverable 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
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
INTO unique_titles
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
WHERE (de.to_date = '9999-01-01')
	 AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
	
-- SELECT DISTINCT ON (emp_no) e.emp_no,
-- 	e.first_name,
-- 	e.last_name,
-- 	e.birth_date,
-- 	de.from_date,
-- 	de.to_date,
-- 	t.title	
-- --INTO mentorship_eligibility
-- FROM employees as e
-- INNER JOIN dept_emp as de
-- ON (e.emp_no = de.emp_no)
-- INNER JOIN titles as t
-- ON (e.emp_no = t.emp_no)
-- WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01') ORDER BY e.emp_no;
