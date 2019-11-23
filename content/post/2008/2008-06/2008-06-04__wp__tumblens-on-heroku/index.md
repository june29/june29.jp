+++
title = "TumbLensをHerokuにてリリース"
date = "2008-06-04T02:48:30+09:00"
slug = "tumblens-on-heroku"
draft = false

+++

<p>言いたいことはいっぱいあるけど，ゆっくり順番に話そうと思う！</p>
<h3>PicLensってなに</h3>
<p><a href="http://www.piclens.com/">PicLens | Immersive Views Across the Web</a></p>
<p><a href="https://addons.mozilla.org/ja/firefox/addon/5579">PicLens :: Firefox Add-ons</a></p>
<p>これはもう PicLens のサイトを見てください！ステキなインタフェースですよね！PicLens の拡張機能をインストールした Firefox で Flickr や Google の画像検索の結果ページを見ると，とってもワクワクしちゃいます！</p>
<p>じゃあ，こんなステキなインタフェースでみんなが見たいものはなんでしょう．ひとりの囚人は壁を見ていた… もちろんあたしは Tumblr を見るわ！ というわけで作ってみたのが TumbLens です．</p>
<p><a href="http://tumblens.heroku.com/"><img src="http://img.skitch.com/20080603-pb6adfyd6m8kc63raejy6di37t.png" alt="TumbLens"/></a></p>
<p><a href="http://tumblens.heroku.com/">TumbLens</a></p>
<p>Tumblr のユーザ名と Tumblelog の URL を入力すると，PicLens 対応サイトが出力されます．あとは，PicLens を起動して，思う存分トリップしちゃってください！</p>
<p><embed flashvars="autoplay=false" width="640" height="520" allowfullscreen="true" src="http://www.ustream.tv/flash/video/460702" type="application/x-shockwave-flash" /></p>
<p>スクリーンキャストは画質が低すぎて話になりませんね…！</p>
<p>Tumblr にポストされた良質のコンテンツを，PicLens という優れたインタフェースと組み合わせたら，きっと楽しいだろうと考えました．PicLens 対応サイトの作り方は<a href="http://piclens.com/lite/webmasterguide.php">公式リファレンス</a>に書いてあります．また，<a href="http://d.hatena.ne.jp/zariganitosh/20080506/1210055878">MacBookをPicLens対応サーバにしてiPhoto Libraryを覗いてみる</a>がとても参考になりました！というか，こちらのエントリがなかったら PicLens 対応サイトを作ろうとしていなかったと思います．ありがとうございます！</p>
<h3>Heroku.comをホストにする</h3>
<p>Rails アプリとして作った TumbLens は，一時期すごく話題になった <a href="http://heroku.com/">Heroku.com</a> をホストにして動かしています．最初に Heroku を知ったときは，ブラウザ上で Rails アプリが開発できちゃう IDE だと思ったから，「それならローカルで開発した方がいいよなー」と思ってあまり気にしていなかったんだけど，Rails アプリのホストとして使うのはアリですね．面倒なデプロイ作業から開放されます．TumbLens のような小物には充分なホスト先だと思います．</p>
<p>Heroku の使用感については，エントリを改めて書こうかな．</p>
