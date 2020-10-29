class AddDetailsToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :user_id, :integer
    add_column :recipes, :title, :string
    add_column :recipes, :infomation, :text
    add_column :recipes, :how_to, :text
    add_column :recipes, :recipe_image, :string
  end
end
