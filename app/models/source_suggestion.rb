class SourceSuggestion < ActiveRecord::Base
  belongs_to :source
  belongs_to :user

  def self.datatable_scope
    joins('INNER JOIN users on users.id = source_suggestions.user_id')
      .joins('INNER JOIN sources on sources.id = source_suggestions.source_id')
  end
end
