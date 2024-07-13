class RenameColumnPhone < ActiveRecord::Migration[7.0]
  def change
    rename_column :visitors, :phone, :phone_number
  end
end
