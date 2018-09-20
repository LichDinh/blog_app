class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
     t.string :content
     t.integer :user_id
     t.integer :micropost_id
    end
     add_index :comments, :user_id
    add_index :comments, :micropost_id
  end
end
