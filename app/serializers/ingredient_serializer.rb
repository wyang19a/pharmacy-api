# frozen_string_literal: true

class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :form
  belongs_to :products
  # has_many :recipes
end
