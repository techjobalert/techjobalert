class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :title
      t.string :objective
      t.text :description

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
