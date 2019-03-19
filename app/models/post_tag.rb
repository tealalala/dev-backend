class PostTag < ApplicationRecord
  # Active Record Association: posts / JOIN: post_tags / tags
  belongs_to :post
  belongs_to :tag

  # Active Record Association: posts / JOIN: post_user_votes / users
  belongs_to :post
  belongs_to :user
end
