class AddFormToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :form, :string
  end
end
