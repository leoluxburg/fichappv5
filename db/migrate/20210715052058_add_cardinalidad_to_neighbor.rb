class AddCardinalidadToNeighbor < ActiveRecord::Migration[6.0]
  def change
    add_column :neighbors, :cardinalidad, :string
  end
end
