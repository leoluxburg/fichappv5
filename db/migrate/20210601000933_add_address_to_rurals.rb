class AddAddressToRurals < ActiveRecord::Migration[6.0]
  def change
    add_column :rurals, :address, :string
  end
end
