module Constants
  TIMESPAN_MAP = {
    'today' => Date.today.to_time,
    'this_week' => 1.week.ago,
    'this_month' => 1.month.ago,
    'this_year' => 1.year.ago,
    'all_time' => 99.years.ago
  }

  DISPLAY_NAME_QUERY = 'users.username ILIKE :query OR users.email ILIKE :query OR users.name ILIKE :query'
end
