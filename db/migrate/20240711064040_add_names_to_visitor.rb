class AddNamesToVisitor < ActiveRecord::Migration[7.0]
  def change
    add_column :visitors, :first_name, :string
    add_column :visitors, :last_name, :string
  end
end
