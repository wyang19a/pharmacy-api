class RemoveIngTypeFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :Ing_type, :string
  end
end
