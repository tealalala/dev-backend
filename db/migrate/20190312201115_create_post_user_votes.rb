class CreatePostUserVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :post_user_votes do |t|
      t.integer :user_id
      t.integer :post_id
      t.boolean :upvote

      t.timestamps
    end
  end
end
