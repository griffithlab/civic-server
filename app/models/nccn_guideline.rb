class NccnGuideline < ActiveRecord::Base
  has_many :assertions

  def display_name
    name
  end
end
