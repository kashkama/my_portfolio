class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.column :language, :string
      t.column :rating, :integer
      t.column :description, :string

      t.timestamps
    end
  end
end
