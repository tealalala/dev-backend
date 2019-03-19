class Post < ApplicationRecord
  # Model Relationships
  has_many :post_user_votes
  has_one :user, through: :post_user_votes
        # it makes sense to have has_one :user (1 post created by 1 user) but maybe we need has_many :users to make this a proper join table
end
