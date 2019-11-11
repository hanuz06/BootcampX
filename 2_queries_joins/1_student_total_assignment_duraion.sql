SELECT SUM(assignment_submissions.duration) AS total_duration 
FROM assignment_submissions
JOIN students AS s
ON student_id = s.id
WHERE s.name = 'Armand Hilll';