module LinkAdaptors
  class Assertion < Base
    def display_name
      "AID#{obj.id}"
    end

    def row_name
      "A#{obj.id}"
    end

    def base_path
      "/events/assertions/#{obj.id}/summary"
    end
  end
end
