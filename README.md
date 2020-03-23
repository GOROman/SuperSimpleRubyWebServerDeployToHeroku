# Super Simple Ruby WebServer Deploy to Heroku

![GitHub Actions](https://github.com/GOROman/SuperSimpleRubyWebServerDeployToHeroku/workflows/GitHub%20Actions/badge.svg)
[![Omikuji](https://omikuji.net/badge.svg?ffffff)](https://omikuji.net/)

Heroku上にデプロイして最小限で実行できるWebサーバー

## はじめに

Heroku公式のRubyのサンプルはいろいろとファイルが多いので、最小限何があれば動くか調査した

- 実際にデプロイしてHeroku上で動作している例( https://super-simple-ruby-webserver.herokuapp.com )


## 最小限のファイル構成

|ファイル名|説明|
|---|---|
|Procfile|このファイルがないと起動時にアプリを実行してもらえない|
|app.rb|アプリ本体(ファイル名は任意。Procfile内で指定する)|
|Gemfile|Heroku上でビルドする上で必要|
|Gemfile.lock||

## メモ

- このプログラム(app.rb)自体はWebrickを使ったシンプルなWebサーバー
- Gemfile がないとデプロイ時に怒られる
- Gemfile.lock は bundle install 時に作られるものを使う
- Procfile の中身は web: + 起動したいアプリを記載
```ruby
    web: ruby app.rb $PORT
```
- Procfile 自体は Ruby の[foreman](http://ddollar.github.io/foreman/)の仕様。参考資料( https://qiita.com/7kaji/items/6a59977d2ad85604e7fd )
- $PORT にウェブサーバーのポート番号が入ってくる。引数で受け取ってアプリに渡す(80や443ではない)


## さいごに

実際にHerokuでデプロイしてみたい人は以下のボタンで

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/GOROman/SuperSimpleRubyWebServerDeployToHeroku)
