class Recipe < ApplicationRecord
  belongs_to :product, inverse_of: :recipes
  belongs_to :ingredient, inverse_of: :recipes
end
