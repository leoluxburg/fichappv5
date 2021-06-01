class RenameCoordantesToRurals < ActiveRecord::Migration[6.0]
  def change
    rename_column :rurals, :latitud, :latitude
    rename_column :rurals, :longitud, :longitude
  end
end
