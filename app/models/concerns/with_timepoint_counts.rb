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

    def self.count_from_time(timepoint)
      self.where("#{self.table_name}.created_at >= ?", timepoint).count
    end
  end
end
