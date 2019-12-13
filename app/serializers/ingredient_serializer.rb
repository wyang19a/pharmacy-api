# frozen_string_literal: true

class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :form, :editable
  has_many :products, through: :recipe
  belongs_to :user
  has_one :recipes

  def editable
    scope == object.user
  end
end
