# frozen_string_literal: true

require "rails_helper"

RSpec.describe "weather", type: :feature do
  before do
    locate = "130010"
    uri = URI.parse("http://weather.livedoor.com/forecast/webservice/json/v1?city=#{locate}")
    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
  end

  scenario "Todayのテスト" do
    visit root_path
    expect(page).to have_content "今日の天気"
    expect(page).to have_content "#{@result["location"]["city"]}"
    expect(page).to have_content "#{@result["forecasts"][0]["telop"]}"
  end

  scenario "Tomorrowのテスト" do
    visit tomorrow_path
    expect(page).to have_content "明日の天気"
    expect(page).to have_content "#{@result["location"]["city"]}"
    expect(page).to have_content "#{@result["forecasts"][1]["telop"]}"
  end
end
