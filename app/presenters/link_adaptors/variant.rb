module LinkAdaptors
  class Variant < Base
    def display_name
      "#{obj.name} (#{obj.gene.name})"
    end

    def edit_name
      "#V#{obj.id}"
    end

    def base_path
      "/#/events/genes/#{obj.gene.id}/summary/variants/#{obj.id}/summary#variant"
    end
  end
end
