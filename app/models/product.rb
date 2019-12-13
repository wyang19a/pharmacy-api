# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :user
  has_many :recipes, dependent: :destroy
  has_many :ingredients, through: :recipes
end
