class AcmgCode < ActiveRecord::Base
  has_and_belongs_to_many :assertions
end
