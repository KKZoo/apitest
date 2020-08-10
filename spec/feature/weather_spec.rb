# frozen_string_literal: true

require "rails_helper"

RSpec.describe "weather", type: :feature do
  before do
    weather_id = "1850147"
    api_key = ENV['WEATHER_API_KEY']
    uri = URI.parse("http://api.openweathermap.org/data/2.5/forecast?id=#{weather_id}&appid=#{api_key}")
    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
  end

  scenario "Todayのテスト" do
    visit root_path
    expect(page).to have_content "今日の天気"
    expect(page).to have_content "東京"
    expect(page).to have_content "#{(@result["list"][0]["main"]["temp_max"] - 273.15).round(1)}"
  end

  scenario "Tomorrowのテスト" do
    visit tomorrow_path
    expect(page).to have_content "明日の天気"
    expect(page).to have_content "東京"
    expect(page).to have_content "#{(@result["list"][8]["main"]["temp_max"] - 273.15).round(1)}"
  end
end
