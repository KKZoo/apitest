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
Prefecture.create!(id: 2, name: "青森県")
Prefecture.create!(id: 3, name: "岩手県")
Prefecture.create!(id: 4, name: "宮城県")
Prefecture.create!(id: 5, name: "秋田県")
Prefecture.create!(id: 6, name: "山形県")
Prefecture.create!(id: 7, name: "福島県")
Prefecture.create!(id: 8, name: "茨城県")
Prefecture.create!(id: 9, name: "栃木県")
Prefecture.create!(id: 10, name: "群馬県")
Prefecture.create!(id: 11, name: "埼玉県")
Prefecture.create!(id: 12, name: "千葉県")
Prefecture.create!(id: 13, name: "東京都")
Prefecture.create!(id: 14, name: "神奈川県")
Prefecture.create!(id: 15, name: "新潟県")
Prefecture.create!(id: 16, name: "富山県")
Prefecture.create!(id: 17, name: "石川県")
Prefecture.create!(id: 18, name: "福井県")
Prefecture.create!(id: 19, name: "山梨県")
Prefecture.create!(id: 20, name: "長野県")
Prefecture.create!(id: 21, name: "岐阜県")
Prefecture.create!(id: 22, name: "静岡県")
Prefecture.create!(id: 23, name: "愛知県")
Prefecture.create!(id: 24, name: "三重県")
Prefecture.create!(id: 25, name: "滋賀県")
Prefecture.create!(id: 26, name: "京都府")
Prefecture.create!(id: 27, name: "大阪府")
Prefecture.create!(id: 28, name: "兵庫県")
Prefecture.create!(id: 29, name: "奈良県")
Prefecture.create!(id: 30, name: "和歌山県")
Prefecture.create!(id: 31, name: "鳥取県")
Prefecture.create!(id: 32, name: "島根県")
Prefecture.create!(id: 33, name: "岡山県")
Prefecture.create!(id: 34, name: "広島県")
Prefecture.create!(id: 35, name: "山口県")
Prefecture.create!(id: 36, name: "徳島県")
Prefecture.create!(id: 37, name: "香川県")
Prefecture.create!(id: 38, name: "愛媛県")
Prefecture.create!(id: 39, name: "高知県")
Prefecture.create!(id: 40, name: "福岡県")
Prefecture.create!(id: 41, name: "佐賀県")
Prefecture.create!(id: 42, name: "長崎県")
Prefecture.create!(id: 43, name: "熊本県")
Prefecture.create!(id: 44, name: "大分県")
Prefecture.create!(id: 45, name: "宮崎県")
Prefecture.create!(id: 46, name: "鹿児島県")
Prefecture.create!(id: 47, name: "沖縄県")

# データベースに市町村を追加
# 北海道
City.create!(id: 1, prefecture_id: 1, weather_id: "011000", name: "稚内")
City.create!(id: 2, prefecture_id: 1, weather_id: "012010", name: "旭川")
City.create!(id: 3, prefecture_id: 1, weather_id: "012020", name: "留萌")
City.create!(id: 4, prefecture_id: 1, weather_id: "013010", name: "網走")
City.create!(id: 5, prefecture_id: 1, weather_id: "013020", name: "北見")
City.create!(id: 6, prefecture_id: 1, weather_id: "013030", name: "紋別")
City.create!(id: 7, prefecture_id: 1, weather_id: "014010", name: "根室")
City.create!(id: 8, prefecture_id: 1, weather_id: "014020", name: "釧路")
City.create!(id: 9, prefecture_id: 1, weather_id: "014030", name: "帯広")
City.create!(id: 10, prefecture_id: 1, weather_id: "015010", name: "室蘭")
City.create!(id: 11, prefecture_id: 1, weather_id: "015020", name: "浦河")
City.create!(id: 12, prefecture_id: 1, weather_id: "016010", name: "札幌")
City.create!(id: 13, prefecture_id: 1, weather_id: "016020", name: "岩見沢")
City.create!(id: 14, prefecture_id: 1, weather_id: "016030", name: "倶知安")
City.create!(id: 15, prefecture_id: 1, weather_id: "017010", name: "函館")
City.create!(id: 16, prefecture_id: 1, weather_id: "017020", name: "江差")
# 青森県
City.create!(id: 17, prefecture_id: 2, weather_id: "020010", name: "青森")
City.create!(id: 18, prefecture_id: 2, weather_id: "020020", name: "むつ")
City.create!(id: 19, prefecture_id: 2, weather_id: "020030", name: "八戸")
# 岩手県
City.create!(id: 20, prefecture_id: 3, weather_id: "030010", name: "盛岡")
City.create!(id: 21, prefecture_id: 3, weather_id: "030020", name: "宮古")
City.create!(id: 22, prefecture_id: 3, weather_id: "030030", name: "大船渡")
# 宮城県
City.create!(id: 23, prefecture_id: 4, weather_id: "040010", name: "仙台")
City.create!(id: 24, prefecture_id: 4, weather_id: "040020", name: "白石")
# 秋田県
City.create!(id: 25, prefecture_id: 5, weather_id: "050010", name: "秋田")
City.create!(id: 26, prefecture_id: 5, weather_id: "050020", name: "横手")
# 山形県
City.create!(id: 27, prefecture_id: 6, weather_id: "060010", name: "山形")
City.create!(id: 28, prefecture_id: 6, weather_id: "060020", name: "米沢")
City.create!(id: 29, prefecture_id: 6, weather_id: "060030", name: "酒田")
City.create!(id: 30, prefecture_id: 6, weather_id: "060040", name: "新庄")
# 福島県
City.create!(id: 31, prefecture_id: 7, weather_id: "070010", name: "福島")
City.create!(id: 32, prefecture_id: 7, weather_id: "070020", name: "小名浜")
City.create!(id: 33, prefecture_id: 7, weather_id: "070030", name: "若松")
# 茨城県
City.create!(id: 34, prefecture_id: 8, weather_id: "080010", name: "水戸")
City.create!(id: 35, prefecture_id: 8, weather_id: "080020", name: "土浦")
# 栃木県
City.create!(id: 36, prefecture_id: 9, weather_id: "090010", name: "宇都宮")
City.create!(id: 37, prefecture_id: 9, weather_id: "090020", name: "大田原")
# 群馬県
City.create!(id: 38, prefecture_id: 10, weather_id: "100010", name: "前橋")
City.create!(id: 39, prefecture_id: 10, weather_id: "100020", name: "みなかみ")
# 埼玉県
City.create!(id: 40, prefecture_id: 11, weather_id: "110010", name: "さいたま")
City.create!(id: 41, prefecture_id: 11, weather_id: "110020", name: "熊谷")
City.create!(id: 42, prefecture_id: 11, weather_id: "110030", name: "秩父")
# 千葉県
City.create!(id: 43, prefecture_id: 12, weather_id: "120010", name: "千葉")
City.create!(id: 44, prefecture_id: 12, weather_id: "120020", name: "銚子")
City.create!(id: 45, prefecture_id: 12, weather_id: "120030", name: "館山")
# 東京都
City.create!(id: 46, prefecture_id: 13, weather_id: "130010", name: "東京")
City.create!(id: 47, prefecture_id: 13, weather_id: "130020", name: "大島")
City.create!(id: 48, prefecture_id: 13, weather_id: "130030", name: "八丈島")
City.create!(id: 49, prefecture_id: 13, weather_id: "130040", name: "父島")
# 神奈川県
City.create!(id: 50, prefecture_id: 14, weather_id: "140010", name: "横浜")
City.create!(id: 51, prefecture_id: 14, weather_id: "140020", name: "小田原")
# 新潟県
City.create!(id: 52, prefecture_id: 15, weather_id: "150010", name: "新潟")
City.create!(id: 53, prefecture_id: 15, weather_id: "150020", name: "長岡")
City.create!(id: 54, prefecture_id: 15, weather_id: "150030", name: "高田")
City.create!(id: 55, prefecture_id: 15, weather_id: "150040", name: "相川")
# 富山県
City.create!(id: 56, prefecture_id: 16, weather_id: "160010", name: "富山")
City.create!(id: 57, prefecture_id: 16, weather_id: "160020", name: "伏木")
# 石川県
City.create!(id: 58, prefecture_id: 17, weather_id: "170010", name: "金沢")
City.create!(id: 59, prefecture_id: 17, weather_id: "170020", name: "輪島")
# 福井県
City.create!(id: 60, prefecture_id: 18, weather_id: "180010", name: "福井")
City.create!(id: 61, prefecture_id: 18, weather_id: "180020", name: "敦賀")
# 山梨県
City.create!(id: 62, prefecture_id: 19, weather_id: "190010", name: "甲府")
City.create!(id: 63, prefecture_id: 19, weather_id: "190020", name: "河口湖")
# 長野県
City.create!(id: 64, prefecture_id: 20, weather_id: "200010", name: "長野")
City.create!(id: 65, prefecture_id: 20, weather_id: "200020", name: "松本")
City.create!(id: 66, prefecture_id: 20, weather_id: "200030", name: "飯田")
# 岐阜県
City.create!(id: 67, prefecture_id: 21, weather_id: "210010", name: "岐阜")
City.create!(id: 68, prefecture_id: 21, weather_id: "210020", name: "高山")
# 静岡県
City.create!(id: 69, prefecture_id: 22, weather_id: "220010", name: "静岡")
City.create!(id: 70, prefecture_id: 22, weather_id: "220020", name: "網代")
City.create!(id: 71, prefecture_id: 22, weather_id: "220030", name: "三島")
City.create!(id: 72, prefecture_id: 22, weather_id: "220040", name: "浜松")
# 愛知県
City.create!(id: 73, prefecture_id: 23, weather_id: "230010", name: "名古屋")
City.create!(id: 74, prefecture_id: 23, weather_id: "230020", name: "豊橋")
# 三重県
City.create!(id: 75, prefecture_id: 24, weather_id: "240010", name: "津")
City.create!(id: 76, prefecture_id: 24, weather_id: "240020", name: "尾鷲")
# 滋賀県
City.create!(id: 77, prefecture_id: 25, weather_id: "250010", name: "大津")
City.create!(id: 78, prefecture_id: 25, weather_id: "250020", name: "彦根")
# 京都府
City.create!(id: 79, prefecture_id: 26, weather_id: "260010", name: "京都")
City.create!(id: 80, prefecture_id: 26, weather_id: "260020", name: "舞鶴")
# 大阪府
City.create!(id: 81, prefecture_id: 27, weather_id: "270000", name: "大阪")
# 兵庫県
City.create!(id: 82, prefecture_id: 28, weather_id: "280010", name: "神戸")
City.create!(id: 83, prefecture_id: 28, weather_id: "280020", name: "豊岡")
# 奈良県
City.create!(id: 84, prefecture_id: 29, weather_id: "290010", name: "奈良")
City.create!(id: 85, prefecture_id: 29, weather_id: "290020", name: "風屋")
# 和歌山県
City.create!(id: 86, prefecture_id: 30, weather_id: "300010", name: "和歌山")
City.create!(id: 87, prefecture_id: 30, weather_id: "300020", name: "潮岬")
# 鳥取県
City.create!(id: 88, prefecture_id: 31, weather_id: "310010", name: "鳥取")
City.create!(id: 89, prefecture_id: 31, weather_id: "310020", name: "米子")
# 島根県
City.create!(id: 90, prefecture_id: 32, weather_id: "320010", name: "松江")
City.create!(id: 91, prefecture_id: 32, weather_id: "320020", name: "浜田")
City.create!(id: 92, prefecture_id: 32, weather_id: "320030", name: "西郷")
# 岡山県
City.create!(id: 93, prefecture_id: 33, weather_id: "330010", name: "岡山")
City.create!(id: 94, prefecture_id: 33, weather_id: "330020", name: "津山")
# 広島県
City.create!(id: 95, prefecture_id: 34, weather_id: "340010", name: "広島")
City.create!(id: 96, prefecture_id: 34, weather_id: "340020", name: "庄原")
# 山口県
City.create!(id: 97, prefecture_id: 35, weather_id: "350010", name: "下関")
City.create!(id: 98, prefecture_id: 35, weather_id: "350020", name: "山口")
City.create!(id: 99, prefecture_id: 35, weather_id: "350030", name: "柳井")
City.create!(id: 100, prefecture_id: 35, weather_id: "350040", name: "萩")
# 徳島県
City.create!(id: 101, prefecture_id: 36, weather_id: "360010", name: "徳島")
City.create!(id: 102, prefecture_id: 36, weather_id: "360020", name: "日和佐")
# 香川県
City.create!(id: 103, prefecture_id: 37, weather_id: "370000", name: "高松")
# 愛媛県
City.create!(id: 104, prefecture_id: 38, weather_id: "380010", name: "松山")
City.create!(id: 105, prefecture_id: 38, weather_id: "380020", name: "新居浜")
City.create!(id: 106, prefecture_id: 38, weather_id: "380030", name: "宇和島")
# 高知県
City.create!(id: 107, prefecture_id: 39, weather_id: "390010", name: "高知")
City.create!(id: 108, prefecture_id: 39, weather_id: "390020", name: "室戸岬")
City.create!(id: 109, prefecture_id: 39, weather_id: "390030", name: "清水")
# 福岡県
City.create!(id: 110, prefecture_id: 40, weather_id: "400010", name: "福岡")
City.create!(id: 111, prefecture_id: 40, weather_id: "400020", name: "八幡")
City.create!(id: 112, prefecture_id: 40, weather_id: "400030", name: "飯塚")
City.create!(id: 113, prefecture_id: 40, weather_id: "400040", name: "久留米")
# 佐賀県
City.create!(id: 114, prefecture_id: 41, weather_id: "410010", name: "佐賀")
City.create!(id: 115, prefecture_id: 41, weather_id: "410020", name: "伊万里")
# 長崎県
City.create!(id: 116, prefecture_id: 42, weather_id: "420010", name: "長崎")
City.create!(id: 117, prefecture_id: 42, weather_id: "420020", name: "佐世保")
City.create!(id: 118, prefecture_id: 42, weather_id: "420030", name: "厳原")
City.create!(id: 119, prefecture_id: 42, weather_id: "420040", name: "福江")
# 熊本県
City.create!(id: 120, prefecture_id: 43, weather_id: "430010", name: "熊本")
City.create!(id: 121, prefecture_id: 43, weather_id: "430020", name: "阿蘇乙姫")
City.create!(id: 122, prefecture_id: 43, weather_id: "430030", name: "牛深")
City.create!(id: 123, prefecture_id: 43, weather_id: "430040", name: "人吉")
# 大分県
City.create!(id: 124, prefecture_id: 44, weather_id: "440010", name: "大分")
City.create!(id: 125, prefecture_id: 44, weather_id: "440020", name: "中津")
City.create!(id: 126, prefecture_id: 44, weather_id: "440030", name: "日田")
City.create!(id: 127, prefecture_id: 44, weather_id: "440040", name: "佐伯")
# 宮崎県
City.create!(id: 128, prefecture_id: 45, weather_id: "450010", name: "宮崎")
City.create!(id: 129, prefecture_id: 45, weather_id: "450020", name: "延岡")
City.create!(id: 130, prefecture_id: 45, weather_id: "450030", name: "都城")
City.create!(id: 131, prefecture_id: 45, weather_id: "450040", name: "高千穂")
# 鹿児島県
City.create!(id: 132, prefecture_id: 46, weather_id: "460010", name: "鹿児島")
City.create!(id: 133, prefecture_id: 46, weather_id: "460020", name: "鹿屋")
City.create!(id: 134, prefecture_id: 46, weather_id: "460030", name: "種子島")
City.create!(id: 135, prefecture_id: 46, weather_id: "460040", name: "名瀬")
# 沖縄県
City.create!(id: 136, prefecture_id: 47, weather_id: "471010", name: "那覇")
City.create!(id: 137, prefecture_id: 47, weather_id: "471020", name: "名護")
City.create!(id: 138, prefecture_id: 47, weather_id: "471030", name: "久米島")
City.create!(id: 139, prefecture_id: 47, weather_id: "472000", name: "南大東")
City.create!(id: 140, prefecture_id: 47, weather_id: "473000", name: "宮古島")
City.create!(id: 141, prefecture_id: 47, weather_id: "474010", name: "石垣島")
City.create!(id: 142, prefecture_id: 47, weather_id: "474020", name: "与那国島")
