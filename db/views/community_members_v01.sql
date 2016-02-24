SELECT
  DISTINCT users.*,
  MAX(events.created_at) as most_recent_event_timestamp,
  COUNT(DISTINCT(events.id)) as event_count
FROM users
  LEFT OUTER JOIN events on events.originating_user_id = users.id
GROUP BY users.id;
