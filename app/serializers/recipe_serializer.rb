class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :amount, :unit
  has_one :product
  has_one :ingredient
end
