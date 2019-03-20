class Post < ApplicationRecord
  # Active Record Association: posts / JOIN: post_tags / tags
  has_many :post_tags
  has_many :tags, through: :post_tags

  # Active Record Association: posts / JOIN: post_user_votes / users
  has_many :post_user_votes
  has_one :user, through: :post_user_votes
        # it makes sense to have has_one :user (1 post created by 1 user) but maybe we need has_many :users to make this a proper join table
end
