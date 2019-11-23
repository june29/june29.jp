+++
title = "TumblrのテーマをTwitter風にしてみた"
date = "2008-05-17T01:29:33+09:00"
slug = "tumblr-theme-like-a-twitter"
draft = false

+++

<p>マークアップの練習をしたいなーと思って，手頃な課題として Tumblr のテーマいじりをしてみた．</p>
<p><a href="http://june29.tumblr.com/">tumblr29</a></p>
<p><img src="http://img.skitch.com/20080518-8q82bkj38tccm9bqn5655e8wb5.png" alt="tumblr29"/></p>
<p>Twitter の HTML 構造をじっくり眺めて，それに合わせて Tumblr の HTML を組み立てて，少しずつ CSS を書いていこうと当初は思ったんだけど，Tumblr の custom HTML が面白いってことに気が付いて段々と逸れていった．結局，Twitter の CSS を丸ごと当てて，必要なものをちょいと足したくらいだ．</p>
<p><img src="http://img.skitch.com/20080516-k333e1p5upy2k78brsgq5p4kbw.png" alt="Sidebar of tumblr29"/></p>
<p>サイドバーの「Stats」の部分，Twitter では followings とか Updates がある部分に，Tumblr のポスト種類別の内訳を表示させたいと思って，その副産物が先日作った <a href="http://libelabo.jp/tumblr/chart.html">TumblrPostChart</a> でした．</p>
<p>当初の目的は果たされてなかったりするけれど，改めて Tumblr の API を眺めたりする中で気付いたこともいくつかあったし，楽しく作業できたのでよしとしよう．</p>
<h3>(追記) テーマのソースを公開します</h3>
<p><a href="http://caramel-tea.com/">lomoさん</a>から「公開してほしい！」とのありがたいお言葉をいただいたので，テーマのソースを以下に公開します．</p>
<p><del>Tumblr theme like a Twitter (txt)</del></p>
<p><ins datetime="2008-08-05T16:00:30+00:00"><a href="http://gist.github.com/4089">gist: 4089 — GitHub</a>におきました！</ins></p>
<p><del>(ファイル置き場に Dropbox を使ってみる．ローカルファイルを編集したら Web 上のファイルも勝手に更新してくれて便利だね)</del></p>
<p>自由に使っていただいて結構です．テーマ適用の際の注意点は以下の通り．</p>
<ul>
<li>API のエンドポイントを自分のユーザ名に合わせて書き換える．[USERNAME] や june29 で検索をかけて次々に直してください</li>
<li>サイドバーのプロフィールを自分のものに置き換える</li>
<li><del>favicon の URL を書き換える．そのまま使うと「裸」のアイコンになっちゃう</del> (Tumblr の Favicon を使うように修正)</li>
<li>ページ上部の検索ボックスは飾りです．何も機能しません</li>
<li>画像はボクのサーバから読んでいるので，ボクのサーバが落ちていると表示できません．必要であれば，他の場所に設置して URL も書き換える</li>
<li>ボクが確認していないブラウザで JavaScript が正しく動作しなかったらゴメンなさい</li>
<li>すべてのポストに「by Tombloo」が付きます．必要に応じて直してください</li>
<li>(2008/05/19 追記) 上部のナビゲーションバーの Dashboard へのリンクがスペルミスで死んでいた…＞＜</li>
</ul>
