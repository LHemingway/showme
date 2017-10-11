class RemoveUserIdFromProjects < ActiveRecord::Migration[5.1]
  def change
  	remove_index :projects, column: :user_id
  end
end
