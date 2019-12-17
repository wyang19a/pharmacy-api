class AddIngredientTypeToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :ing_type, :string
  end
end
