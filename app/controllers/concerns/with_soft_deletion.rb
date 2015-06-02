module WithSoftDeletion
  extend ActiveSupport::Concern

  def soft_delete(obj, presenter_class)
    obj.deleted = true
    if obj.save
      head :no_content, status: :no_content
    else
      render json: presenter_class.new(obj), status: :unprocessable_entity
    end
  end
end
