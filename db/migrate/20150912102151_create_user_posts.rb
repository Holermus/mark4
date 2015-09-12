class CreateUserPosts < ActiveRecord::Migration
  def change
    create_table :user_posts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
