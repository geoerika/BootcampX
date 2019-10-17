SELECT day, COUNT(assignments.*) as nr_assignments
  FROM assignments
  GROUP BY day
  ORDER BY day;