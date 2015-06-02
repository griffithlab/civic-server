module SoftDeletable
  extend ActiveSupport::Concern
  included do
    default_scope ->() { where(deleted: false) }

    def soft_delete!
      self.deleted = true
      self.deleted_at = DateTime.now
      self.save
    end
  end
end
