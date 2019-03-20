class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  # Active Record Association: posts / JOIN: post_user_votes / users
  has_many :post_user_votes
  has_many :posts, through: :post_user_votes

end
