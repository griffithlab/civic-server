class AcmgCode < ActiveRecord::Base
  has_and_belongs_to_many :assertions

  def display_name
    name
  end

  def name
    code
  end
end
