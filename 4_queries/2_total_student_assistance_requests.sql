SELECT
  COUNT(a.*) as total_assistances, students.name as name
FROM
  students
  JOIN assistance_requests as a 
  ON student_id = students.id
WHERE
  name = 'Elliot Dickinson'
GROUP BY name;