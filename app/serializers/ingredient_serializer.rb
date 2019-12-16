# frozen_string_literal: true

class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :strength, :form, :ing_type, :products, :editable
  belongs_to :products # , through: :recipe
  belongs_to :user

  def editable
    scope == object.user
  end
end
