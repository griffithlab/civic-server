module WithAudits
  extend ActiveSupport::Concern
  included do
    audited except: [:created_at, :updated_at], allow_mass_assignment: true

    has_one :creation_event,
      ->() { where(action: 'create').includes(:user) },
      class_name: Audited.audit_class, as: :auditable

    has_one :last_update_event,
      ->() { where(action: 'update').includes(:user).order('audits.created_at DESC') },
      class_name: Audited.audit_class, as: :auditable

    has_one :creator, through: :creation_event, source: :user, source_type: User
    has_one :last_updator, through: :last_update_event, source: :user, source_type: User
  end
end