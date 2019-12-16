class AddIngTypeToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :Ing_type, :string
  end
end
