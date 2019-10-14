SELECT
  v.id AS variant_id,
  SUM(CASE WHEN ei.status = 'accepted' THEN 1 ELSE 0 END) AS accepted_count,
  SUM(CASE WHEN ei.status = 'rejected' THEN 1 ELSE 0 END) AS rejected_count,
  SUM(CASE WHEN ei.status = 'submitted' THEN 1 ELSE 0 END) AS submitted_count
FROM variants v
INNER JOIN evidence_items ei ON v.id = ei.variant_id AND ei.deleted = 'f'
GROUP BY v.id;
