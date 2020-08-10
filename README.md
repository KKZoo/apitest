# README
---

## アプリ概要
APIから得た天気情報を表示するアプリです。

現在地情報のデフォルトはなしにしておりますので、ページ下部にドロップダウンリストから選択して下さい。


## APIについて
[livedoorの天気api](https://help.livedoor.com/weather/index.html)から情報を取得してましたがサービスが終了したためAPIを変更しました。

現在は[OpenWeather](https://openweathermap.org)さんから情報を取得できる様にしています。

### 表示できる場所について
```
- 札幌
- 東京
- 名古屋
- 大阪
- 北九州
- 鳥栖
- 那覇
```

## 利用方法

### gemをインストール
```
$bundle install
```

### .envを設定
[OpenWeather](https://openweathermap.org)でAPI_KEYを取得してきたら`YOUR_KEY`にAPI_KEYを設定して下さい。

```
WEATHER_API_KEY=YOUR_KEY
```

### データベースの設定
```
$rails db:migrate
$rails db:seed
```

### ローカルサーバーの起動
```
$rails s
```
