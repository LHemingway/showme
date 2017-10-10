class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_names, :string
    add_column :users, :surname, :string
    add_column :users, :avatar, :text
    add_column :users, :start_date, :date
    add_column :users, :course_path, :string
    add_column :users, :user_type, :boolean
  end
end
