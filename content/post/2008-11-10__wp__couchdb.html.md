+++
title = "CouchDBに触れてみた"
date = "2008-11-10T02:57:53+09:00"
slug = "couchdb"
draft = false

+++

<p><a href="http://blogs.ricollab.jp/webtech/2008/06/couchdb/">聞くところ</a>によると，<a href="http://incubator.apache.org/couchdb/">CouchDB</a> の魅力ってのは，ドキュメント指向であったり，Map/Reduce であったり，その辺りにあるらしいのですが，ボクはまだよく分かっていません．このエントリでは，後述の目的を果たすために，CouchDB をサーバにインストールして動かしてみて，永続化ハッシュとして利用するために，値の格納と取得をやってみた，ってところまで扱います．その先の話はエントリを改めてまた今度．</p>
<h3>目的</h3>
<p>よく，cron なんかで定期実行させるスクリプトの中で，前回実行時の情報をファイルに保持させたりしている．これだとスクリプトを実行させるマシンが変わったときにそのファイルも忘れずに移動させなきゃいけないし，複数マシンで実行させるスクリプトともなると，協調が大変．そこで，情報を保持する箇所をひとつにし，かつ，どのマシンからでも情報を読み書きできる仕組みを用意し，ファイルに保持させないようにする．</p>
<h3>CouchDB のインストール</h3>
<p>Debian 機にインストールした．参考にしたのは以下のエントリ．ありがとうございました．</p>
<ul>
<li><a href="http://barkingiguana.com/2008/06/28/installing-couchdb-080-on-ubuntu-804">Barking Iguana: Installing CouchDB 0.8.0 on Ubuntu 8.04</a></li>
<li><a href="http://blogs.ricollab.jp/webtech/2008/06/couchdb/">ricollab Web Tech Blog » Blog Archive » CouchDB について Erlang 分散システム勉強会で紹介してきました</a></li>
</ul>
<p>インストールしたサーバに設定したポート(デフォルトは5984)</p>
<pre>
http://my.server.jp:5984/
</pre>
<p>でアクセスすると</p>
<pre>
{"couchdb":"Welcome","version":"0.8.0-incubating"}
</pre>
<p>が返ってくる．ここがすでに JSON だ．楽しい．</p>
<p>ご丁寧にブラウザから中身を操作できる管理画面がついてくる．ここからデータベースを作成したり，レコードの値を書き換えたりできる．</p>
<pre>
http://my.server.jp:5984/_utils/
</pre>
<p><img src="http://incubator.apache.org/couchdb/img/screenshot-a-small.png" alt="Screenshot of CouchDB Futon" /></p>
<h3>couchdb.rb</h3>
<p><script src="http://gist.github.com/21938.js"></script></p>
<p>今回使いたい get と put だけを実装した．<a href="http://wiki.apache.org/couchdb/Getting_started_with_Ruby">公式のサンプル</a>では JSON 文字列を受け渡ししているんだけど，Ruby のハッシュをそのまま与えるようにしてみた．</p>
<h3>photoshare2twitter.rb</h3>
<p><script src="http://gist.github.com/23307.js"></script></p>
<p>ボクが iPhone で撮った写真をアップしている <a href="http://bcphotoshare.com/photos/14061">Big Canvas PhotoShare</a> から，新着があれば <a href="http://twitter.com/">Twitter</a> に流すっていうサンプル．</p>
<p>Pit で CouchDB のホストとポートを取ってきて，photoshare ってデータベースの latest_processed_photo っていうドキュメントを get する．最後に処理した id より新しい id を持つ写真があれば put でデータを更新する．まさに Java の Map#get，Map#put と変わらない感じで書ける．ただし _rev ってのはリビジョン番号を表していて，これを正しく渡してやらないと</p>
<pre>
412: Precondition Failed (前提条件で失敗した)
</pre>
<p>が返ってくる．複数のトランザクションが同じドキュメントにアクセスするとき，整合性を保つために必要なのだろう．REST について勉強したときも感じたけど，HTTP メソッドとかステータスコードとか，すでにあるものをきちんと理解して，正しく使うってのは大事だなぁ．勉強になります．</p>
<p>今回のサンプルは，データベースもドキュメントもすでに存在することを前提としているから，本当は存在しなかったら作成するとか，そういう処理が必要だ．エラーメッセージも JSON に格納されて返ってくる．</p>
<h3>まとめ</h3>
<p>ひとまず目的は達成できました．最低限の機能でよければ CouchDB のラッパーは簡単に書けてしまう(中身は HTTP のリクエストを呼んでいるだけ) し，とても手軽に使える．</p>
<p>せっかくインストールしたんだから，もうちょっと凝った使い方もしてみたい．次に触ってみたいのは Map/Reduce です．</p>
