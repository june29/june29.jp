+++
title = "通知特化型Twitterアプリ「29hours」をつくってHerokuで動かしているお話"
date = "2013-03-08T00:00:56+09:00"
slug = "29hours"
draft = false

+++

<h3>背景</h3>
<p>近年、若者のメンション離れが問題視されている。明示的なメンションはせずに、ある人を指す俗称などで話しかける、いわゆる「空リプ」は社会現象となり、タイムラインに蔓延している。この状況では、フォローが増えれば増えるほどコミュニケーションを円滑に進めることが難しくなり、増え過ぎたフォローと速くなりすぎたタイムラインを前に「SNS疲れ」を表明する人も</p>
<p>…論文調に書くのは飽きた。</p>
<h3>概要</h3>
<p>いくつかの Twitter クライアントアプリには、キーワードフィルタの設定などがあり、特定の条件を満たすツイートをそれなりに見逃さずに閲覧できるようになっています。しかし、常時起動型のアプリはあまり多くなく、移動中など、デスクトップから離れるタイミングでは、自身への言及に対する反応が困難になりがちです。</p>
<p>そこで、自分用として「1日に29時間くらい動く」をコンセプトとした「29hours」という通知特化型アプリをつくりました。お手軽にずっと動かし続けたいものなので、Heroku の上で動かしやすいようにちょっとした工夫もしてあります。</p>
<p>ちょっと前にも同じコンセプトでアプリをつくって VPS で動かしていたりもしたのですが、拡張性に乏しく、また、運用も面倒臭い感じで動作させ続けるのが苦になってしまったので、そのときの不満を解消するべく新しくつくりなおしたのでした。</p>
<p>このエントリでは、そんなかわいい 29hours を紹介します。</p>
<h3>想定ユーザ</h3>
<p>「Git はわかりません」という人だと、実際に手元で動かしてみるのはむつかしいと思います。逆に「Git はわかります」くらいの人であれば、わりとすぐに動かして遊べると思うので、このエントリを読んで興味が沸いてきたら試してみてください！</p>
<h3>「29hours」オーバービュー</h3>
<p><img src="http://c714091.r91.cf2.rackcdn.com/9850fdfb4beb03f9456b423d738e022f58aac109c2.png" alt=""></p>
<p>29Hours には、大きく4つの設定があります。順番に説明します。</p>
<ul>
<li>Twitter に接続するための設定</li>
<li>マッチ条件を指定する設定</li>
<li>通知先の設定</li>
<li>リンク先の設定</li>
</ul>
<h4>Twitter に接続するための設定</h4>
<p>Twitter アプリなので、いつもの4つ組の値を設定します。</p>
<h4>マッチ条件を指定する設定</h4>
<p>好きな Matcher クラスを使用できます。</p>
<p>どんなツイートをチェックしたいかを指定します。今は「特定の文字列を含むツイート」を検知する KeywordsMatcher を実装してあります。</p>
<h4>通知先の設定</h4>
<p>好きな Notifier クラスを使用できます。</p>
<p>指定の条件にマッチしたツイートを、どのように通知するかを指定します。最初に <a href="https://boxcar.io/" title="Instant Notifications for Facebook, Twitter, Email and More! — Boxcar">Boxcar</a> というサービスを通じて通知する BoxcarNotifier を実装しました。Boxcar には iPhone アプリがあるので、ぼくは iPhone で通知を受ける使い方をしています。</p>
<p>続いて <a href="http://im.kayac.com/" title="im.kayac.com">im.kayac.com</a> を通じて通知する ImkayacNotifier もつくりました。</p>
<h4>リンク先の設定</h4>
<p>好きな Linker クラスを使用できます。</p>
<p>通知にはリンクを含めることができます。最もベーシックなものとして HttpLinker というものを用意してあります。これは、通知対象ツイートを「http://twitter.com/#{screen_name}/status/#{status_id}」へリンクしてくれるものです。</p>
<p>ぼくは、iPhone では <a href="http://tapbots.com/software/tweetbot/" title="Tweetbot — Tapbots">Tweetbot</a> を使用することが多いので、TweetbotLinker もつくりました。通知対象ツイートを「tweetbot://#{screen_name}/status/#{status_id}」にリンクしてくれます。これを iPhone で開くと、Tweetbot で対象ツイートにアクセスできます。</p>
<p>もしあなたが利用しているクライアントアプリがカスタム URL スキーマに対応していたら、そのクライアントアプリ用のリンク URL をつくる Linker を実装して使用するのがよいでしょう。</p>
<h4>設定ファイルのサンプル</h4>
<p><script src="https://gist.github.com/june29/5108350.js"></script></p>
<p>たとえばこんな設定ファイルを書くと、ぼくのタイムラインを流れるツイートから、キーワード「大和田」「じゅーん」などにマッチするものを検知して「Boxcar」に通知し、それを開くと「Tweetbot」で対象ツイートにアクセスできるわけです。</p>
<h3>動かす</h3>
<p>動かすまでのおおまかな手順は、以下の通りです。</p>
<pre>
$ git clone git://github.com/june29/29hours.git
$ cd 29hours/
$ cp settings.example.yml settings.yml

(settings.yml を適当に編集する)

$ bundle exec ruby 29hours.rb
</pre>
<p>本体が 29hours.rb で、同じディレクトリにある settings.yml を読み込んで動きます。</p>
<h4>Heroku に乗せる</h4>
<p>Heroku で動かすには、先ほどの手順に続いて、以下も行いましょう。</p>
<pre>
$ heroku create アプリ名
$ git push heroku master
$ heroku config:add SETTINGS_FILE_PATH=http://path.to/your/settings.yml

(Heroku のアプリの管理画面で worker の数を0から1にする)
</pre>
<p>SETTINGS_FILE_PATH に URL を指定すると、そこにある設定ファイルを読み込んで動きます。いい感じに動く設定ファイルを用意できたら、Dropbox にでも置いてパブリックな URL をゲットして設定してやるのがおすすめです。こうすることで、ファイルシステムへのアクセスがむつかしい Heroku でも上手に動かすことができます。</p>
<p>設定ファイルの内容を変更したときは、いっぱつ再起動してやってください。</p>
<pre>
$ heroku restart --app アプリ名
</pre>
<p><img src="http://c714091.r91.cf2.rackcdn.com/9850fdfb4b89c364a6eae1a4b51e52bfa4d5d2a4ad.png" alt=""></p>
<p>プロセスがひとつまでなら無料で利用できるので、ダッシュボードからこのように設定します。また、Heroku に乗せると種々の Add-ons も活用できます。上の画面にもあるように、たとえばログ管理の <a href="https://papertrailapp.com/" title="Papertrail">Papertrail</a> の Add-ons を導入してみましょう。29hours はツイートの本文をログに出力しているので、ツイート本文を対象に検索できちゃったりします。便利ですね。</p>
<p><img src="http://c714091.r91.cf2.rackcdn.com/9850fdfb4b9a27893283359bcc5af0cde28208cc78.png" alt=""></p>
<h3>まとめ</h3>
<p>通知特化型 Twitter アプリ「29hours」をつくりました。ずっと動かし続けられるように、Heroku でも動くような設計にしました。通知に関する設定はそこそこプラガブルになっているので、今後の自分のユースケースの変化に合わせて、長くお付き合いしていきたいなぁと思っています。</p>
<p><a href="https://github.com/june29/29hours" title="june29/29hours · GitHub">june29/29hours · GitHub</a></p>
