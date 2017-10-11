class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.text :screenshot
      t.text :description
      t.text :technologies
      t.string :url
      t.boolean :public_private

      t.timestamps
    end
  end
end
