class CreateReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :references do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :link, :string
      
      t.timestamps
    end
  end
end
