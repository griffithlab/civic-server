class MakeCoordinatesInts < ActiveRecord::Migration
  def change
    change_column :variants, :start, "integer USING (nullif(trim(start), '')::integer)"
    change_column :variants, :start2, "integer USING (nullif(trim(start2), '')::integer)"
    change_column :variants, :stop, "integer USING (nullif(trim(stop), '')::integer)"
    change_column :variants, :stop2, "integer USING (nullif(trim(stop2), '')::integer)"
  end
end
