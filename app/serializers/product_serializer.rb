# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :strength, :form, :editable, :recipes
  has_many :ingredients
  belongs_to :user

  def editable
    scope == object.user
  end
end
