class Tag < ApplicationRecord
  # Active Record Association: posts / JOIN: post_tags / tags
  has_many :post_tags
  has_many :posts, through: :post_tags
end
