+++
title = "続Plaggerいじり"
date = "2006-09-26T13:31:58+09:00"
slug = "plagger"
draft = false

+++

<h3>del.icio.usのブックマークをはてなブックマーク及びLivedoor Clipへ</h3>
<p>すごく便利だなぁと思ったのだけれど，ボクの環境では<a href="http://watcher.moe-nifty.com/memo/2005/10/bookey.html" target="_blank">ソーシャルブックマーク管理ツールbookey</a>が動きません．でもいざというときのためにdel.icio.usのブックマークをはてなブックマークや他のソーシャルブックマークサービスにも残しておきたい．それPla，と思ってやってみました．</p>
<p>なぜブックマークのバックアップを考えたか，理由はいくつかあります．まず単純に，del.icio.usがメンテナンスなどで利用不能になっているときに，代わりに利用できるものがほしい．そして，それぞれのサービスにはそれぞれの良さがあって，上手に使い分けていけたらもっと便利に使えるだろうと考えました．del.icio.usは投稿がしやすくて好きです．一方ではてなブックマークは，再利用の仕組みがたくさんあって楽しいです．特に最近，<a href="http://d.hatena.ne.jp/keyword/%A4%CF%A4%C6%A4%CA%A5%D6%A5%C3%A5%AF%A5%DE%A1%BC%A5%AF%A5%B3%A5%E1%A5%F3%A5%C8%A4%BD%A4%CE%BE%EC%A4%C7%C9%BD%BC%A8%A5%E9%A5%A4%A5%D6%A5%E9%A5%EA" target="_blank">はてなブックマークコメントその場で表示ライブラリ</a>がリリースされてますます楽しいです．ボクも自分の作ったWebサイトでこのライブラリを利用させてもらおうと思ったのですが，自分のコメントが表示されないってのは寂しいものです．それで，はてなブックマークにも同期させてしまえと思いました．ついでにサムネイル表示が嬉しいLivedoor Clipにも同期させます．</p>
<p>yamlは<a href="http://plagger.g.hatena.ne.jp/Seacolor/20060801/1150540074" target="_blank">Plaggerグループ &#8211; Seacolor&#8217;s Labs. &#8211; del.icio.usとはてなブックマークを同期させるyaml（完全版）</a>を参考にさせてもらいました．感謝です．</p>
<p>del.icio.us2hatebdoor.yaml<br />
[code]<br />
global:<br />
  timezone: Asia/Tokyo<br />
  log:<br />
    level: info</p>
<p>plugins:<br />
  &#8211; module: Subscription::Config<br />
    config:<br />
      feed:<br />
        &#8211; url: http://del.icio.us/rss/june29</p>
<p>  &#8211; module: Filter::Rule<br />
    rule:<br />
      module: Deduped<br />
      path: /home/june29/plagger/cache_rule/delicious2hatebdoor.tmp<br />
      compare_body: 1</p>
<p>  &#8211; module: Filter::Reverse<br />
  &#8211; module: Filter::DeliciousFeedTags</p>
<p>  &#8211; module: Publish::HatenaBookmark<br />
    config:<br />
      username: (hatena_id)<br />
      password: (hatena_password)<br />
      interval: 8<br />
      post_body: 1</p>
<p>  &#8211; module: Publish::LivedoorClip<br />
    config:<br />
      livedoor_id: (livedoor_id)<br />
      password: (livedoor_password)<br />
      interval: 5<br />
      post_body: 1<br />
[/code]</p>
<p>Dedupedを指定して重複ポストを防ぎます．delicious2hatebdoor.tmpはそのためのファイルのようです．指定したファイルが存在しない状態でこのyamlを実行すると途中で止まります．事前に用意しておく必要があるのでしょうか．</p>
<p>[code]<br />
touch /home/june29/plagger/cache_rule/delicious2hatebdoor.tmp<br />
plagger -c del.icio.us2hatebdoor.yaml<br />
[/code]</p>
<p>上記のようにコマンドを実行したところ，上手く動いてくれました．各intervalは適当です．急ぐものでもないので，他の使用者の皆さんのソースを参考にしつつ気持ち長めに設定．</p>
<h3>自分と仲間たちのブックマークを全文にしてGmailへ</h3>
<p>これはもう，「誰かがブックマークしていたなぁ」をいつでも全文検索できるようにしたい，それだけです．<a href="http://subtech.g.hatena.ne.jp/miyagawa/20060412/1144846549" target="_blank">Bulknews::Subtech &#8211; atode.cc クローン by Plagger</a>をほとんどそのまま利用させてもらいました．感謝です．</p>
<p>sbm2gmail.yaml<br />
[code]<br />
global:<br />
  timezone: Asia/Tokyo</p>
<p>plugins:<br />
  &#8211; module: Subscription::Config<br />
    config:<br />
      feed:<br />
        &#8211; FEED_URL_1<br />
        &#8211; FEED_URL_2<br />
        &#8211; FEED_URL_3<br />
                 ･<br />
                 ･<br />
                 ･</p>
<p>  &#8211; module: Filter::EntryFullText<br />
    config:<br />
      store_html_on_failure: 1</p>
<p>  &#8211; module: Filter::ResolveRelativeLink</p>
<p>  &#8211; module: Filter::Rule<br />
    rule:<br />
      module: Fresh<br />
      mtime:<br />
        path: /home/june29/plagger/cache_rule/sbm2gmail.tmp<br />
        autoupdate: 1</p>
<p>  &#8211; module: Filter::BreakEntriesToFeeds</p>
<p>  &#8211; module: Publish::Gmail<br />
    config:<br />
      mailto: you@example.com<br />
      mailfrom: you@example.com<br />
      mailroute:<br />
        via: smtp<br />
        host: localhost:25<br />
[/code]</p>
<p>リンク先に説明があるのでここでは省きます．mtimeがよく分かっていないのですが，これも重複チェックのための機構だと思います．先ほどと同じように予めテンポラリを作っておくときちんと動きます．</p>
<p>[code]<br />
touch /home/june29/plagger/cache_rule/sbm2gmail.tmp<br />
plagger -c sbm2gmail.yaml<br />
[/code]</p>
<p>指定するフィードの数が多くなると，全文取得や画像の相対パスを絶対パスに変換する処理などでけっこうな時間がかかるので，このyamlは3時間に1回だけ実行するようにcronを設定しました．</p>
<h3>複数フィードを1つのフィードに統合</h3>
<p>ウチの組織では，お互いがお互いに相手のブログ，ソーシャルブックマーク等のフィードをRSSリーダで購読しています．だからメンバーが1人増えるたびに登録の手間が発生するわけです．だったら全員分のフィードを1つにまとめて，みんなもそのフィードだけを購読するようにすれば良いということでPlaggerでやりました．</p>
<p>members2feed.yaml<br />
[code]<br />
global:<br />
  timezone: Asia/Tokyo<br />
  level: info<br />
  cache:<br />
    base: /home/june29/plagger/cache_rule</p>
<p>plugins:<br />
  &#8211; module: Subscription::Config<br />
    config:<br />
      feed:<br />
        &#8211; FEED_URL_1<br />
        &#8211; FEED_URL_2<br />
        &#8211; FEED_URL_3<br />
                 ･<br />
                 ･<br />
                 ･</p>
<p>  &#8211; module: SmartFeed::All<br />
    config:<br />
      title: &#8220;FEED TITLE&#8221;</p>
<p>  &#8211; module: Publish::Feed<br />
    rule:<br />
      expression: $args->{feed}->id eq &#8216;smartfeed:all&#8217;<br />
    config:<br />
      dir: /var/www/public_html/rss/<br />
      format: RSS<br />
      filename: feedtitle.rss</p>
<p>[/code]</p>
<p>指定したフィードをまとめてタイトルを付けて外から見える場所にファイルとして出力しているだけです．最初，sudoなしではmkdirしようとして止まってしまっていたのですが，globalのところでcacheのbaseを指定したらsudoなしでも実行できるようになりました．仕組みはまだよく分かっていないので，これから勉強しなければなりません．</p>
<h3>今回のまとめ</h3>
<p>ひとまず「やりたい！」ことはPlaggerを利用して1つずつ実現できています．世間的にはPlaggerでなんでもできる感じになっていますが，ボクはまだまだ「誰かがすでにやっていて，記録を残してくれているもの」しかできていません．もう少し触ってみて理解を深めて，もっと便利な使い方を見付けられたらなぁと感じています．ともあれ，こんなに便利なツールを提供してくれている皆さんにはとても感謝です！Plagger！</p>
<h3>追記</h3>
<p><a href="http://june29.jp/2006/09/27/plagger-2/" alt="続Plaggerいじり補足">続Plaggerいじり補足</a>にて内容を補足しています．</p>
