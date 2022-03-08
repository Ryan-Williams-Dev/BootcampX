SELECT teachers.name, count(assistance_requests.completed_at)
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';