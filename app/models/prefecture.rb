# frozen_string_literal: true

class Prefecture < ApplicationRecord
  #  has_many :cities, class_name: "City", foreign_key: :prefecture_id
  has_many :cities
end
