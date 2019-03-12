class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :post_title
      t.text :post_content
      t.boolean :post_status
      t.boolean :comment_status

      t.timestamps
    end
  end
end
