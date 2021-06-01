class AddCoordinatesToRurals < ActiveRecord::Migration[6.0]
  def change
    add_column :rurals, :latitud, :float
    add_column :rurals, :longitud, :float
  end
end
