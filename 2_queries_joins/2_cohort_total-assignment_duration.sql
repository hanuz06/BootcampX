SELECT SUM(assignment_submissions.duration) AS total_duration 
FROM assignment_submissions
JOIN students AS s
ON student_id = s.id
JOIN cohorts 
ON s.cohort_id=cohorts.id
WHERE cohorts.name = 'FEB12';