# Ruby on Rails perfct guide2章のコード
パーフェクト Ruby on Railsの2章の最終的なコードを残したもの。

MVCモデルの基本を抑えたコードになっている。

## 動かし方
- git clone git@github.com:DaisukeHirabayashi/perfect_ruby_on_rails_chapter2.git
- gem install bundle
- bin/rails db:create
- bin/raisl db:migrate
## ルーティングパターン
- config/routes.rbを参照
## Controllerのサンプルコード
- app/controllers/books_controller.rbを参照

また、全てのController内で共通で行われること(今回は、ユーザーデバイスの認識)は、application_controlelr.rbに記述。

## Viewのサンプルコード
以下２つのコードを主に参照
- app/views/books/show.html.erb
- app/views/layouts/application.html.erb

controllerのレンダリング(render :show)の部分では、
- 描画するためのテンプレートを探す
- 見つかったテンプレートをもとに、データを展開し最終的なHTMLを作成する

といったことをおこなっている。

また、テンプレートを探索する時、テンプレートファイルは以下のような規約で検索されている。
- RAILS_ROOT/appp/views/コントローラ名/アクション名.html.erb

レイアウト用のテンプレートファイルは特に指定を行わない場合application.html.erbが用いられる。
テンプレートを用いることでheadの部分は記述を共通化し、bodyの部分を書くということが可能になる。

## APIサーバーとしてのビュー(JSONの返答)
- app/controllers/books/show.json/jbuilder を参照
