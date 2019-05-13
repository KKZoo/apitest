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
    expect(page).to have_content "Today Weather"
    expect(page).to have_content "today"
    expect(page).to have_content "tomorrow"
    expect(page).to have_content "場所: #{@result["location"]["city"]}"
    expect(page).to have_content "天気: #{@result["forecasts"][0]["telop"]}"
  end

  scenario "Tomorrowのテスト" do
    visit tomorrow_path
    expect(page).to have_content "Tomorrow Weather"
    expect(page).to have_content "today"
    expect(page).to have_content "tomorrow"
    expect(page).to have_content "場所: #{@result["location"]["city"]}"
    expect(page).to have_content "天気: #{@result["forecasts"][1]["telop"]}"
  end
end
