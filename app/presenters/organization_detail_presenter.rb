class OrganizationDetailPresenter < OrganizationIndexPresenter

  def as_json(opt = {})
    super.merge(
      {
        members: org.users
          .sort_by { |u| -u.last_seen_at.to_i }
          .map { |u| UserPresenter.new(u) },
        child_organizations: org.groups.map{|g| OrganizationIndexPresenter.new(g)}
      }
    )
  end
end
