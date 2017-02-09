class OrganizationDetailPresenter < OrganizationIndexPresenter

  def as_json(opt = {})
    super.merge(
      {
        members: org.users.map { |u| UserPresenter.new(u) }
      }
    )
  end
end
