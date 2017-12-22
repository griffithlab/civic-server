module WithSorting
  extend ActiveSupport::Concern

  def sort_direction(field_name)
    if params["sorting"].blank?
      'DESC'
    elsif params["sorting"][field_name].present? && params["sorting"][field_name].upcase == 'DESC'
      'DESC'
    else
      'ASC'
    end
  end
end
