class RemoveStrengthFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :strength, :string
  end
end
