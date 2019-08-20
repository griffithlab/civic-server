module WithAudits
  extend ActiveSupport::Concern
  included do
    audited except: [:created_at, :updated_at], allow_mass_assignment: true

    has_one :creation_audit,
      ->() { where(action: 'create').includes(:user) },
      class_name: Audited.audit_class.to_s, as: :auditable

    has_one :last_update_audit,
      ->() { where(action: 'update').includes(:user).order('audits.created_at DESC') },
      class_name: Audited.audit_class.to_s, as: :auditable
  end
end