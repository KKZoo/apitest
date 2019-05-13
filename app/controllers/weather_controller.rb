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
    # 天気の日時
    @weather_time = "Today"

    # 天気の表示場所
    @locate_prefecture = $result["location"]["prefecture"]
    @locate_prefecture = $result["location"]["area"] if $result["location"]["area"] == "北海道"
    @locate_city = $result["location"]["city"]

    # 天気の取得
    @weather = $result["forecasts"][0]["telop"]

    # 天気の画像を取得
    @weather_image = $result["forecasts"][0]["image"]["url"]

    # 最大気温の取得
    @celsius_max = if $result["forecasts"][0]["temperature"]["max"].nil? == true
      "--"
    else
      $result["forecasts"][0]["temperature"]["max"]["celsius"]
    end

    # 最低気温の取得
    @celsius_min = if $result["forecasts"][0]["temperature"]["min"].nil? == true
      "--"
    else
      $result["forecasts"][0]["temperature"]["min"]["celsius"]
    end
  end

  def tomorrow
    # 天気の日時
    @weather_time = "Tomorrow"

    # 天気の表示場所
    @locate_prefecture = $result["location"]["prefecture"]
    @locate_prefecture = $result["location"]["area"] if $result["location"]["    area"] == "北海道"
    @locate_city = $result["location"]["city"]

    # 天気の取得
    @weather = $result["forecasts"][1]["telop"]

    # 天気の画像を取得
    @weather_image = $result["forecasts"][1]["image"]["url"]

    # 最大気温の取得
    @celsius_max = if $result["forecasts"][1]["temperature"]["max"].nil? == true
      "--"
    else
      $result["forecasts"][1]["temperature"]["max"]["celsius"]
    end

    # 最低気温の取得
    @celsius_min = if $result["forecasts"][1]["temperature"]["min"].nil? == true
      "--"
    else
      $result["forecasts"][1]["temperature"]["min"]["celsius"]
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
