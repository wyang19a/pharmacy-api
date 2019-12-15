# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :strength, :quantity, :unit, :editable
  belongs_to :user
  has_many :ingredients

  def editable
    scope == object.user
  end
end
