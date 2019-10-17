SELECT students.name as student, AVG(assignment_submissions.duration) as avg_assignment_duration, AVG(assignments.duration) as avg_estimated_duration
  FROM assignment_submissions
  JOIN students
  ON students.id = assignment_submissions.student_id
  JOIN assignments
  ON assignments.id = assignment_submissions.assignment_id
  WHERE students.end_date IS NULL
  GROUP BY student
  HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
  ORDER BY avg_assignment_duration;