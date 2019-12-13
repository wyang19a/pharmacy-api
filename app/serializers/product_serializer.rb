# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :recipes, :name, :strength, :quantity, :ingredients, :unit, :editable
  belongs_to :user
  has_many :ingredients, through: :recipe

  def editable
    scope == object.user
  end
end
