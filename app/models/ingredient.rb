class Ingredient < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :products, through: :recipes
  belongs_to :user

  validates :name, :form, :ing_type, presence: true
end
