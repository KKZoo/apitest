# frozen_string_literal: true

require "net/http"
require "uri"
require "json"

class WeatherController < ApplicationController
  # livedoorの天気apiからデータを取得
  $result = nil

  def show
  end

  def today
    read_weather(0)
  end

  def tomorrow
    read_weather(8)
  end

  def update
    locate = params[:locate][:id]
    weather_id = locate
    api_key = ENV['WEATHER_API_KEY'] 
    uri = URI.parse("http://api.openweathermap.org/data/2.5/forecast?id=#{weather_id}&appid=#{api_key}")
    json = Net::HTTP.get(uri)
    $result = JSON.parse(json)
    redirect_to root_path
  end

private

  def read_weather(day_info)
    # 天気の日時
    day_info == 0 ? day = "Today" : day = "Tomorrow"
    @weather_time = day
    
    if $result.nil? == true
      # 天気の表示場所
      @locate_prefecture = "--"
      
      # 天気の取得
      @weather = "--"

      # 天気の画像を取得
      @weather_image = "--"
  
      # 最大気温の取得
      @celsius_max = "--"
  
      # 最低気温の取得
      @celsius_min = "--"
    else
      # 天気の表示場所
      @locate_prefecture = $result["city"]["name"]
      
      # 天気の取得
      @weather = $result["list"][day_info]["weather"][0]["main"]
  
      # 天気の画像を取得
      icon = $result["list"][day_info]["weather"][0]["icon"]
      icon[2] = "d"
      @weather_image = "http://openweathermap.org/img/wn/#{icon}.png"
  
      # 最大気温の取得
      @celsius_max = ($result["list"][day_info]["main"]["temp_max"] - 273.15).round(1)
  
      # 最低気温の取得
      @celsius_min = ($result["list"][day_info]["main"]["temp_min"] - 273.15).round(1)
    end
  end
end
