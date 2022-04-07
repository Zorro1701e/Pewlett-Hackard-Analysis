-- Deliverable 1

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_data
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_data

SELECT DISTINCT ON (rd.emp_no) rd.emp_no, rd.first_name, rd.last_name, rd.title
INTO unique_title
FROM retirement_data AS rd
WHERE rd.to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_title

SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_title AS ut
GROUP BY title
ORDER BY count (title) DESC;

SELECT * FROM retiring_titles


	  





