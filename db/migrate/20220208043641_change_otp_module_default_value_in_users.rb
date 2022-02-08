class ChangeOtpModuleDefaultValueInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :otp_module, :integer, default: 0
  end
end
