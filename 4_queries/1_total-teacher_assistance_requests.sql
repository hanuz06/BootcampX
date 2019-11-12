SELECT
  COUNT(a.*) as total_assistance, teachers.name as name
FROM
  teachers
  JOIN assistance_requests as a 
  ON teacher_id = teachers.id
WHERE
  name = 'Waylon Boehm'
GROUP BY name;