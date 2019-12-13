class Ingredient < ApplicationRecord
  has_many :recipes
  has_many :products, through: :recipes
end
