SELECT  
  AVG(started_at-created_at) as average_wait_time  
FROM
  assistance_requests
  JOIN students ON student_id = students.id  
