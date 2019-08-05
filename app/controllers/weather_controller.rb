# frozen_string_literal: true

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
    ReadWeather(0)
  end

  def tomorrow
    ReadWeather(1)
  end

  def ReadWeather(day_info)
    # 天気の日時
    day = ["Today","Tomorrow"]
    @weather_time = day[day_info]

    # 今日の日付を生成
    date = $result["forecasts"][0]["date"].split("-")
    @today = "#{date[1].to_i}\/#{date[2].to_i}"
    
    # 明日の日付を生成
    date = $result["forecasts"][1]["date"].split("-")
    @tomorrow = "#{date[1].to_i}\/#{date[2].to_i}"

    # 天気の表示場所
    @locate_prefecture = $result["location"]["prefecture"]
    @locate_prefecture = $result["location"]["area"] if $result["location"]["area"] == "北海道"
    @locate_city = $result["location"]["city"]

    # 天気の取得
    @weather = $result["forecasts"][day_info]["telop"]

    # 天気の画像を取得
    @weather_image = $result["forecasts"][day_info]["image"]["url"]

    # 最大気温の取得
    @celsius_max = if $result["forecasts"][day_info]["temperature"]["max"].nil? == true
      "--"
    else
      $result["forecasts"][day_info]["temperature"]["max"]["celsius"]
    end

    # 最低気温の取得
    @celsius_min = if $result["forecasts"][day_info]["temperature"]["min"].nil? == true
      "--"
    else
      $result["forecasts"][day_info]["temperature"]["min"]["celsius"]
    end
  end

  def update
    locate = params[:locate][:id]
    weather_id = locate
    uri = URI.parse("http://weather.livedoor.com/forecast/webservice/json/v1?city=#{weather_id}")
    json = Net::HTTP.get(uri)
    $result = JSON.parse(json)
    redirect_to root_path
  end
end
