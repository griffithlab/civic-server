module WithTimepointCounts
  extend ActiveSupport::Concern

  included do
    def self.count_this_week
      count_from_time(1.week.ago)
    end

    def self.count_this_month
      count_from_time(1.month.ago)
    end

    def self.count_this_year
      count_from_time(1.year.ago)
    end

    def self.count_all_time
      count_from_time(99.years.ago)
    end

    def self.count_from_time(timepoint)
      timepoint_query.call(timepoint).count
    end

    def self.timepoint_query
     ->(x) { self.where("#{self.table_name}.created_at >= ?", x).distinct }
    end
  end
end
