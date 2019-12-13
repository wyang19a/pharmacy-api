class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :strength
      t.string :unit
      t.string :form

      t.timestamps
    end
  end
end
