class AdvancedSearch < ActiveRecord::Base
  serialize :params, JSON
  before_create :generate_id_token

  def searcher
    self.search_type
      .constantize
      .new(self.params)
  end

  private
  def generate_id_token
    unless self.token.present?
      self.token = SecureRandom.uuid
    end
  end
end
