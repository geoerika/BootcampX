SELECT day, COUNT(*) as nr_assignments
  FROM assignments
  GROUP BY day
  HAVING COUNT(*) >= 10
  ORDER BY day;