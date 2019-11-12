SELECT
  assignment_id as id,
  assignments.name as name,
  assignments.day as day,
  assignments.chapter as chapter,
  COUNT(assistance_requests.created_at) as total_requests
FROM
  assistance_requests
  JOIN students ON student_id = students.id
  JOIN assignments ON assignment_id = assignments.id
GROUP BY
  assignment_id,
  assignments.name,
  assignments.day,
  assignments.chapter
ORDER BY
  COUNT(assistance_requests.created_at) DESC;


-- --Correct answer
-- SELECT
--   assignments.id,
--   name,
--   day,
--   chapter,
--   count(assistance_requests) as total_requests
-- FROM
--   assignments
--   JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY
--   assignments.id
-- ORDER BY
--   total_requests DESC;