# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :products
  has_many :ingredients
  has_many :recipes
end
