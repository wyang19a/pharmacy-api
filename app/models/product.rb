# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :ingredients,
           inverse_of: :product
  has_many :recipes, dependent: :destroy
  has_many :ingredients, through: :recipes
  belongs_to :user
end
