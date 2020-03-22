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

- このプログラム自体は HELLO WORLD を返すだけのWebサーバー
- Gemfile.lock は bundle install 時に作られる
- Procfile の中身は web: はじまりで起動したいアプリを記載
- $PORT にウェブサーバーのポート番号が入ってくる。引数で受け取ってアプリに渡す(80ではない)

web: ruby app.rb $PORT

