class Ingredient < ApplicationRecord
  belongs_to :product,
             foreign_key: 'product_id',
             inverse_of: :ingredient
  belongs_to :user
  has_many :recipes, dependent: :destroy
  has_many :products, through: :recipes
end
