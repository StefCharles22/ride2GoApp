class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :gender, :string
    add_column :users, :smoking, :boolean
  end
end
