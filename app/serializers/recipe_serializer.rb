class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :amount, :unit, :editable
  has_one :product
  has_one :ingredient
  belongs_to :user

  def editable
    scope == object.user
  end
end
