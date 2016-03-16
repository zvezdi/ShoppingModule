class User < ActiveRecord::Migration
  def change
    rename_column :users, :phone_address, :phone_number
  end
end
