class CreateNeighbors < ActiveRecord::Migration[6.0]
  def change
    create_table :neighbors do |t|
      t.string :name
      t.string :id_number
      t.string :estate
      t.string :firma
      t.references :rural, null: false, foreign_key: true

      t.timestamps
    end
  end
end
