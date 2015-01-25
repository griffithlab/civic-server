ActiveAdmin.register SuggestedChange do
  menu :priority => 2
  permit_params :user_id, :suggested_changes_raw, :status

  controller do
    def scoped_collection
      resource_class.includes(:user)
    end
  end

  filter :moderated_type, label: 'Changed Type'
  filter :suggested_changes
  filter :user, label: 'Suggester'
  filter :status, as: :select, collection: SuggestedChange.valid_statuses
  filter :created_at
  filter :updated_at

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :user, include_blank: false
      f.input :suggested_changes_raw, as: :text, label: 'Suggested Changes'
      f.input :status, as: :select, collection: SuggestedChange.valid_statuses, include_blank: false
    end

    f.actions
  end

  index do
    selectable_column
    column :suggested_changes
    column :moderated_type, label: 'Changed Type'
    column :status
    column 'Suggester', :user, sortable: 'users.email'
    column :created_at
    column :updated_at
    actions do |suggested_change|
    end
  end

  member_action :approve do |id|
    change = SuggestedChange.find(id)
    begin
      if change.status != 'applied'
        change.apply!
        flash[:success] = 'Change applied.'
      else
        flash[:error] = 'Change already applied.'
      end
    rescue ChangeApplicationConflictError
      flash[:error] = 'This change has a conflict!'
    end
  end

  batch_action :approve, confirm: 'Are you sure you wish to apply these changes?' do |ids|
    ActiveRecord::Base.transaction do
      SuggestedChange.find(ids).each do |change|
        change.apply!
      end
    end
  end
end
