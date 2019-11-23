+++
title = "Rubyでシンプルなページャ"
date = "2009-01-12T21:37:03+09:00"
slug = "ruby-simple-pager"
draft = false

+++

<p>あるページにアクセスして，ある処理をして，そしたら次のページに遷移して，また同じ処理をして… ってのはよくある処理です．ボクも過去に何度かそういった処理をするスクリプトを書いた覚えがあります．特に，<a href="http://nokogiri.rubyforge.org/nokogiri/" title="nokogiri-1.1.0 Documentation">Nokogiri</a> 登場以後は，がしがしと XPath を扱えるようになったのでスクレイピングがとても楽しくて，その手のスクリプトを書く機会が増えました．</p>
<p>そこで，シンプルなページャを作ってみました．対象となる Web ページの URL と，そのページ中に「次ページへのリンク」の XPath を与えます．each に与えるブロックが，各ページへの処理になります．</p>
<p><script src="http://gist.github.com/45972.js"></script></p>
<p>サンプルでは，<a href="http://june29.jp/" title="準二級.jp">http://june29.jp/</a> にアクセスして，各エントリのタイトルとリンクを表示させています．2008年11月より古いエントリが現れたら，ページングを止めています．</p>
<p>コンソール出力はこんな感じです．</p>
<pre>
------------------------
http://june29.jp/
------------------------
「ウェブで一発当てる方法」を読んだ
        http://june29.jp/2009/01/05/kayac-book/
ユーザ向けレコメンデーションを考える
        http://june29.jp/2009/01/04/thinking-about-recommendation-for-user/
新しくなったはてなブックマークが面白い
        http://june29.jp/2009/01/03/new-hatena-bookmark/
年賀状的なもの
        http://june29.jp/2009/01/02/something-like-a-new-year-greeting-card/
パッケージング能力
        http://june29.jp/2009/01/02/ability-topackage/
------------------------
http://june29.jp/page/2/
------------------------
2008年を振り返る！
        http://june29.jp/2008/12/31/looking-back-at-the-year-2008/
Fairy Tale に行ってきた！
        http://june29.jp/2008/12/28/fairy-tale/
高専カンファレンスのこれから
        http://june29.jp/2008/12/21/kosenconf-in-future/
数ヶ月ぶりにテレビを楽しんだ
        http://june29.jp/2008/12/21/tv-shows-are-interesting/
マイネット・ジャパンさんとの交流勉強会
        http://june29.jp/2008/12/21/workshop-in-mynet/

(途中略...)

------------------------
http://june29.jp/page/6/
------------------------
LimeChatにTwitterのアイコンを表示させてみる
        http://june29.jp/2008/11/03/show-twitter-user-icon-on-limechat/
</pre>
<p>どこで終わるか分からない処理を each で書くのはどうなんだろう，とか考えたりもしつつ，二転三転して今の形になっています．非常に短いプログラムですが，考えることがたくさんあって勉強になりました．引き続き，自分で使ってみながら作り込んでいこうと思っています．</p>
