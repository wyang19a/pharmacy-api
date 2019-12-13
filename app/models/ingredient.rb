class Ingredient < ApplicationRecord
  belongs_to :user
  has_many :recipes, dependent: :destroy
  has_many :products, through: :recipes
end
