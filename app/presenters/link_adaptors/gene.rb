module LinkAdaptors
  class Gene < Base
    def display_name
      obj.name
    end

    def raw_name
      "#G#{obj.id}"
    end

    def base_path
      "/events/genes/#{obj.id}/summary#gene"
    end
  end
end
