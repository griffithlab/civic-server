class CurationDashboardController < ApplicationController
  include WithSorting

  actions_without_auth :open_flags, :evidence_items_requiring_action, :entities_with_outstanding_revisions

  def open_flags
    flags = Flag.index_scope
              .where(state: 'open')
              .order("flags.created_at #{sort_direction('created_at')}")
              .page(params[:page].to_i)
              .per(params[:count].to_i)
              .uniq

    render json: PaginatedCollectionPresenter.new(
      flags,
      request,
      FlagPresenter,
      PaginationPresenter
    )
  end

  def evidence_items_requiring_action
    eids = EvidenceItem.index_scope
            .where(status: 'submitted')
            .order('evidence_items.id asc')
            .page(params[:page].to_i)
            .per(params[:count].to_i)

    render json: PaginatedCollectionPresenter.new(
      eids,
      request,
      EvidenceItemIndexPresenter,
      PaginationPresenter
    )
  end

  def entities_with_outstanding_revisions
    entities = SuggestedChange.where(status: 'new')
      .group(:moderated_type, :moderated_id)
      .order('count_all desc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .count

    entities = entities.group_by { |(type, _), _| type }.each_with_object({}) do |(type, values), h|
      h[type.pluralize.downcase] = type.constantize.find(values.map { |(_, id), _| id })
          .map { |i| "#{type}IndexPresenter".constantize.new(i) }
    end

    render json: entities
  end
end
