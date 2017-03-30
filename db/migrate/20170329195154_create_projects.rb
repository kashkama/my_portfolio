class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.column :project, :string
      t.column :description, :string
      t.column :category_id, :integer
      
      t.timestamps
    end
  end
end
