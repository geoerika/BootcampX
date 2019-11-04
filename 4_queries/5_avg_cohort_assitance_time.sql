SELECT cohorts.name as name, AVG(completed_at - started_at) as average_cohort_assistance_time
  FROM assistance_requests
  JOIN students
  ON student_id = students.id
  JOIN cohorts
  ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ORDER BY average_cohort_assistance_time;