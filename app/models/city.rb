# frozen_string_literal: true

class City < ApplicationRecord
  #  belongs_to:prefecture, class_name: "Prefecuter", foreign_key: :id
  belongs_to :prefecture
end
