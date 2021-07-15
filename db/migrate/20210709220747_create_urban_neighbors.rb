class CreateUrbanNeighbors < ActiveRecord::Migration[6.0]
  def change
    create_table :urban_neighbors do |t|
      t.string :name
      t.string :id_number
      t.string :estate
      t.string :firma
      t.string :cardinalidad
      t.references :urbano, null: false, foreign_key: true

      t.timestamps
    end
  end
end
