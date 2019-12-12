# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :strength
      t.integer :quantity
      t.string :unit
      t.references :user

      t.timestamps
    end
  end
end
