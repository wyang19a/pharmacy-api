# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.references :product, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.decimal :amount, precision: 10, scale: 3
      t.string :unit

      t.timestamps
    end
  end
end
