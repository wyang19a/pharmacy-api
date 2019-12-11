class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :strength, :quantity, :unit, :user_id, :editable

  def editable
    scope == object.user
  end
end
