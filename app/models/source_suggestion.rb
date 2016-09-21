class SourceSuggestion < ActiveRecord::Base
  belongs_to :source
  belongs_to :user
end
