SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
WHERE students.cohort_id = (SELECT id FROM cohorts WHERE cohorts.name = 'FEB12');