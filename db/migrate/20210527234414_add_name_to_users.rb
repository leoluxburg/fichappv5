class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :string
    add_column :users, :id_n, :string
  end
end
