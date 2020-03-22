# Super Simple Ruby WebServer Deploy to Heroku

Heroku の上にデプロイして最小限で実行できるWebサーバー

## はじめに

Heroku公式のRubyのサンプルはいろいろとファイルが多いので、最小限何があれば動くか調査した。

- 実際にデプロイして動作している例( https://super-simple-ruby-webserver.herokuapp.com )

## ファイル構成

- app.rb アプリ本体(ファイル名は任意。Procfile内で指定する)
- Gemfile Heroku上でビルドする上で必要
- Gemfile.lock 
- Procfile このファイルがないと起動時にアプリを実行してもらえない

## メモ

- このプログラム自体はWebrickを使ったシンプルなWebサーバー
- Gemfile.lock は bundle install 時に作られる
- Procfile の中身は web: はじまりで起動したいアプリを記載
```
web: ruby app.rb $PORT
```
- $PORT にウェブサーバーのポート番号が入ってくる。引数で受け取ってアプリに渡す(80ではない)

## デプロイ

実際にHerokuでデプロイしてみたい人は以下のボタンで。
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/GOROman/SuperSimpleRubyWebServerDeployToHeroku)
