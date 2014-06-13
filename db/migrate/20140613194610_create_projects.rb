class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :client, null: false
      t.text :description
      t.boolean :completed, null: false
      t.timestamps
    end
  end
end
