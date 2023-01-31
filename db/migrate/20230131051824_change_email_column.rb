class ChangeEmailColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :email, :new_email
  end
end