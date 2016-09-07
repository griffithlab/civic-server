class ServerInfoPresenter
  def as_json(opt = {})
    {
      environment: Rails.env
    }
  end
end
