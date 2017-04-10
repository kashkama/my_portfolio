class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :name, :string
      t.text :content
      t.column :user_id, :integer
      t.belongs_to :commentable,  polymorphic: true


      t.timestamps
    end
    add_index :comments,  [:commentable_id, :commentable_type]
  end
end
