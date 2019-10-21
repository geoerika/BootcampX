SELECT students.name as student, teachers.name as teacher, assignments.name as assignment, completed_at - started_at
  FROM assistance_requests
  JOIN students
  ON student_id = students.id
  JOIN teachers
  ON teacher_id = teachers.id
  JOIN assignments
  ON assignment_id = assignments.id
  ORDER BY duration;