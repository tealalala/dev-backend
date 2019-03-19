class PostTag < ApplicationRecord
  # Active Record Association: posts / JOIN: post_user_votes / users
  belongs_to :post
  belongs_to :user
end
