# frozen_string_literal: true

require "rails_helper"

RSpec.describe City, type: :model do
  it "市町村のモデルテスト" do
    city = City.new(id: "1", prefecture_id: "1", weather_id: "011000", name: "稚内")
    expect(city.id).to eq 1
    expect(city.prefecture_id).to eq 1
    expect(city.weather_id).to eq "011000"
    expect(city.name).to eq "稚内"
  end
end
