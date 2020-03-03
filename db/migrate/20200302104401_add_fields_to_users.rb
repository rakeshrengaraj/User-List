class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string#, null: false
    add_column :users, :last_name, :string#, null: false
    add_column :users, :age, :integer
    add_column :users, :gender, :boolean
    add_column :users, :country, :string#, null: false
  end
end
