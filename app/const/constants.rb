module Constants
  TIMESPAN_MAP = {
    'today' => Date.today.to_time,
    'this_week' => 1.week.ago,
    'this_month' => 1.month.ago,
    'this_year' => 1.year.ago,
    'all_time' => Time.new('0001-01-01')
  }

  DISPLAY_NAME_QUERY = 'users.username ILIKE :query OR users.email ILIKE :query OR users.name ILIKE :query'

  GA_TRACKING_ID='UA-83153043-1'
end
