class WeatherController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

# livedoorの天気apiからデータを取得
  weather_id = "130010"
  uri = URI.parse("http://weather.livedoor.com/forecast/webservice/json/v1?city=#{weather_id}")
  json = Net::HTTP.get(uri)
  $result = JSON.parse(json)

  def show
  end

  def today
# 天気の取得
    @weather = $result["forecasts"][0]["telop"]   

# 天気の画像を取得
    @weather_image = $result["forecasts"][0]["image"]["url"]

# 最大気温の取得
    if $result["forecasts"][0]["temperature"]["max"].nil? == true
      @celsius_max = "--"
    else
      @celsius_max = $result["forecasts"][0]["temperature"]["max"]["celsius"]
    end

# 最低気温の取得
    if $result["forecasts"][0]["temperature"]["min"].nil? == true
      @celsius_min = "--"
    else
      @celsius_min = $result["forecasts"][0]["temperature"]["min"]["celsius"]
    end
  end

  def tomorrow
# 天気の取得
    @weather = $result["forecasts"][1]["telop"]   

# 天気の画像を取得
    @weather_image = $result["forecasts"][1]["image"]["url"]

# 最大気温の取得
    if $result["forecasts"][1]["temperature"]["max"].nil? == true
      @celsius_max = "--"
    else
      @celsius_max = $result["forecasts"][1]["temperature"]["max"]["celsius"]
    end

# 最低気温の取得
    if $result["forecasts"][1]["temperature"]["min"].nil? == true
      @celsius_min = "--"
    else
      @celsius_min = $result["forecasts"][1]["temperature"]["min"]["celsius"]
    end
  end
end
