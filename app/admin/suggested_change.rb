ActiveAdmin.register SuggestedChange do
  menu :priority => 6
  permit_params :user_id, :suggested_changes_raw, :status

  config.sort_order = 'updated_at_desc'

  controller do
    def scoped_collection
      resource_class.includes(:user)
    end
  end

  filter :moderated_type, label: 'Changed Type'
  filter :suggested_changes
  filter :user, label: 'Suggester', collection: ->() { User.joins(:suggested_changes).distinct.all.sort_by { |u| u.display_name } }
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
    actions
  end

  member_action :approve, method: :post do |id|
    change = SuggestedChange.find(id)
    begin
      if change.status != 'applied'
        change.apply(current_user)
        flash[:success] = 'Change applied.'
      else
        flash[:error] = 'Change already applied.'
      end
    rescue ChangeApplicationConflictError
      flash[:error] = 'This change has a conflict!'
    end
    redirect_to admin_suggested_change_path(change)
  end

  member_action :reject, method: :post do |id|
    change = SuggestedChange.find(id)
    begin
      if ['applied', 'rejected'].include?(change.status)
        flash[:error] = 'Change already finalized.'
      else
        change.close(current_user)
        flash[:success] = 'Change rejected.'
      end
    end
    redirect_to admin_suggested_change_path(change)
  end

  action_item :approve, only: :show do
    if ['new', 'active'].include?(suggested_change.status)
      link_to('Approve Change', approve_admin_suggested_change_path(resource), method: :post)
    end
  end

  action_item :reject, only: :show do
    if ['new', 'active'].include?(suggested_change.status)
      link_to('Reject Change', reject_admin_suggested_change_path(resource), method: :post)
    end
  end

  batch_action :approve, confirm: 'Are you sure you wish to apply these changes?' do |ids|
    begin
      ActiveRecord::Base.transaction do
        SuggestedChange.find(ids).each do |change|
          change.apply! unless change.status == 'applied'
        end
      end
      flash[:success] = 'Change(s) applied'
    rescue ChangeApplicationConflictError
      flash[:error] = 'One or more changes had a conflict. None applied'
    end
    redirect_to admin_suggested_changes_path
  end
end
