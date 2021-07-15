class AddUserToEspecial < ActiveRecord::Migration[6.0]
  def change
    add_reference :especials, :user, null: false, foreign_key: true
  end
end
