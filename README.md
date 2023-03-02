# tweet

## 『準備』
```:コマンドプロンプト
//railsファイル群を作成
rails new tweet -G

//移動
cd tweet/
ridk exec pacman -S mingw-w64-x86_64-sqlite3
```

```:Gemfile
//railsファイル群を作成
# 一番下に追加
gem 'devise'
```

```:コマンドプロンプト
 # gemのダウンロード
bundle install
# deviseの機能のインストール
rails g devise:install
# deviseの機能を取り込んだUserモデルの作成
rails g devise User
#(deviseの機能ではない)usersコントローラの作成。
rails g controller users index show
```