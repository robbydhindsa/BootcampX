SELECT cohorts.name, count(assignment_submissions.id)
FROM assignment_submissions
JOIN students
ON students.id = student_id
JOIN cohorts
ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.id) DESC;