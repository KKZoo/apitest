# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# データベースに都道府県の追加
Prefecture.create!(id: 1, name: "北海道")
Prefecture.create!(id: 13, name: "東京都")
Prefecture.create!(id: 23, name: "愛知県")
Prefecture.create!(id: 27, name: "大阪府")
Prefecture.create!(id: 40, name: "福岡県")
Prefecture.create!(id: 41, name: "佐賀県")
Prefecture.create!(id: 47, name: "沖縄県")

# データベースに市町村を追加
# 北海道
City.create!(id: 1, prefecture_id: 1, weather_id: "2128295", name: "札幌")
# 東京都
City.create!(id: 2, prefecture_id: 13, weather_id: "1850147", name: "東京")
# 愛知県
City.create!(id: 3, prefecture_id: 23, weather_id: "1856057", name: "名古屋")
# 大阪府
City.create!(id: 4, prefecture_id: 27, weather_id: "1853908", name: "大阪")
# 福岡県
City.create!(id: 5, prefecture_id: 40, weather_id: "1859307", name: "北九州")
# 佐賀県
City.create!(id: 6, prefecture_id: 41, weather_id: "1849904", name: "鳥栖")
# 沖縄県
City.create!(id: 7, prefecture_id: 47, weather_id: "1856035", name: "那覇")