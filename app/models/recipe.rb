class Recipe < ApplicationRecord

  belongs_to :user
  attachment :recipe_image

  has_many :post_comments, dependent: :destroy


end