class Recipe < ApplicationRecord

  belongs_to :user
  attachment :recipe_image


end