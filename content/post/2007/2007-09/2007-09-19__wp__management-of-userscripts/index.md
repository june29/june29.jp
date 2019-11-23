+++
title = "ユーザスクリプトの管理"
date = "2007-09-19T15:34:58+09:00"
slug = "management-of-userscripts"
draft = false

+++

<p>最近，「Greasemonkeyスクリプト」じゃなくて「ユーザスクリプト」っていうようになったのは，それだけボクがユーザスクリプトに可能性を感じているってことの表れだよ．将来的にはFirefoxの1アドオン上で動くものじゃなくて，「お気に入り」とか「ブックマーク」と同じように一般名詞として認知されるようになるべき．実際，Operaで動くものも多数あるんだし，みんなもユーザスクリプトとかuser.jsって呼んだらいいよ！っていう押し付け．でもボクもdel.icio.usのタグはいまだにGreasemonkeyを使っているという自己矛盾．</p>
<p>ボクはこんなことを言うためにこのエントリを書き始めたわけじゃない…！</p>
<h3>ユーザスクリプトの管理</h3>
<p>さっき，<a href="http://d.hatena.ne.jp/swdyh/20070919/1190158049" target="_blank">AutoPagerizeがアップデートされた</a>ことを知り，更新版をインストールしました．そのあと，tumblrのダッシュボードを開いていつものように<a href="http://userscripts.org/scripts/show/11562" target="_blank">LDRize</a>！気に入ったらピン立てピン立て！<a href="http://ido.nu/kuma/2007/08/31/ldrize-minibuffer-command-ldrize_tumblr_rebloguserjs/" target="_blank">ミニバッファでリブログ</a>！…してやろうと思ったのですが，どうにもLDRizeの挙動がおかしい．AutoPagerizeで継ぎ足しされた部分にカーソルが上手く合わない状況に陥りました．</p>
<p>原因は，スクリプトの実行順序にあったようです．AutoPagerizeを上書きインストールしたことで，AutoPagerizeが1番最後に実行されるようになってしまっていたようです．「ユーザスクリプトの管理」の画面で1番下にきていた，ということです．</p>
<p>AutoPagerize，LDRize，LDRize_Command_Tumblr_Reblog，Tumblr Big Photo，の順で再インストールしていったら問題は解決しました．別に再インストールしなくても，管理画面で順序を入れ替えればよかっただけだと後になって気が付いた．もし同じ現象で困っている人がいたら，順序を疑ってみるといいかもしれません．</p>
<p>ユーザスクリプト同士の素晴らしい連携が活発に行われるようになって，Webブラウジングがどんどんあるべき姿に近付いていて，それはとても嬉しいことなのだけど，一方で管理が大変になってきている．ボクはGreasemonkeyの開発体制を知らないのでもちろん偉そうなことは言えないのだけれど，バージョン管理機能や，スクリプト同士の連携をサポートする管理機能は，これからますます必要になってきそうなので，どんどん発展していってほしいものです！</p>
<p>そんなこんなで，ボクにとってユーザスクリプトのないブラウジング生活はもう過去の思い出なわけですが，人力検索はてなの<a href="http://q.hatena.ne.jp/1189675664" target="_blank">Greasemonkeyとは何か、知っていますか？</a>の結果を見る限り，まだまだ一般的ではないのだなあと痛感させられます．そういえばボクは，どのタイミングで，どんなキッカケでユーザスクリプトに出会ったんだろう…</p>
<h3>ユーザスクリプトのある世界</h3>
<p>最後にもうひとつユーザスクリプトに関連した話．話題がどんどん表題から遠ざかるけど気にしないよ．</p>
<p>twitterの「from ○○」の部分を見ていると，皆さん色々なクライアントから更新していることが分かってとても楽しい．twitterの爆発的ヒットの一因として，利用スタイルをユーザに委ねたことが挙げられるでしょう．「好きにしていいよ」スタンスです．ボクも<a href="http://www.misuzilla.org/dist/net/twitterircgateway/" target="_blank">TwitterIrcGateway</a>，<a href="http://www.greenspace.info/twitter/line/" target="_blank">Twitter Line</a>，<a href="http://www.naan.net/trac/wiki/TwitterFox" target="_blank">TwitterFox</a>，<a href="http://tw.f-shin.net/" target="_blank">MovaTwitter</a>，<a href="http://tmitter.fujikake.net/index_ja.html" target="_blank">tmitter</a>などなど，色々と試してみましたが，選ぶこと自体がショッピングをしているようで楽しいですね！今なお模索中です．</p>
<p>でも！なんだかんだでWebブラウザからの利用がすごく多いんです．ユーザさんのプロフィールアイコンが表示されて，@付きメッセージを書くときにはユーザ名を補完してくれて，「j」「k」でログをたどれて，ステキな発言には☆をつけられて，tinyurlは展開してくれて，はてなフォトライフのURLは展開して写真に置き換えてくれて，UstreamのチャンネルのURLを検知してその場で映像を見られるようにしてくれて… (略) …お察しの通り，数々のユーザスクリプトのおかげです．作者の皆さまに感謝！</p>
<p>ユーザスクリプトは，作る側も使う側に手軽に扱えるのがすごくいいですね．LDRizeなどの作者さんで，ボクがとても感謝している<a href="http://white.s151.xrea.com/wiki/" target="_blank">silog</a>のシロさんのところにコメントを書かせていただいたときに，<a href="http://white.s151.xrea.com/wiki/index.php?diary%2F2007-08-10%2F%BE%F5%C2%D6%C9%BD%BC%A8%CE%CE%B0%E8" target="_blank">ファイル1つで完結しているので読みやすい・いじりやすい</a>という話がありまして，まさにその通りだなと思いました．必要な機能だけを選んで使ったり，カスタマイズしたりできますもんね．</p>
<p>ユーザスクリプトを今よりもっと広めて，みんなのブラウジングスタイルが進化していくように，活動していきたいと思っています．</p>
