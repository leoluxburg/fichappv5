class AddSexoToOwner < ActiveRecord::Migration[6.0]
  def change
    add_column :owners, :sexo, :string
  end
end
