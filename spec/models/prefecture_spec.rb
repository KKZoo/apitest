# frozen_string_literal: true

require "rails_helper"

RSpec.describe Prefecture, type: :model do
  it "都道府県のモデルテスト" do
    prefecture = Prefecture.new(id: "1", name: "北海道")
    expect(prefecture.id).to eq 1
    expect(prefecture.name).to eq "北海道"
  end
end
