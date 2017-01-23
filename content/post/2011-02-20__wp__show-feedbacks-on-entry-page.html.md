+++
title = "エントリページに「はてなブックマーク」のコメントと「Twitter」の関連Tweetを表示するようにしました"
date = "2011-02-20T06:10:01+09:00"
slug = "show-feedbacks-on-entry-page"
draft = false

+++

<p><a href="http://june29.jp/2011/02/07/renewal/" title="リニューアルしました - 準二級.jp">リニューアルしました</a>のあとも、ちょいちょいこのブログに手を入れて遊んでいます。引き続き、ソーシャル Web との連携は強化したい想いでいます。</p>
<p>今回は、<a href="http://b.hatena.ne.jp/" title="はてなブックマーク">はてなブックマーク</a>と <a href="http://twitter.com/" title="Twitter / Home">Twitter</a> 上のフィードバックをこのブログに表示するようにしてみました。</p>
<p>たとえば、この間のエントリ「<a href="http://june29.jp/2011/02/11/setup-macbook-pro/" title="MacBook Pro のセットアップメモ - 準二級.jp">MacBook Pro のセットアップメモ</a>」のページ下部を見てもらうと、どういうことか分かると思います。</p>
<p><img src="http://img.skitch.com/20110219-kewf1uq41h1pt62n27fe4fr928.png" alt="Feedbacks" /></p>
<h3>実装</h3>
<p>以下の API を使用しました。</p>
<ul>
<li><a href="http://developer.hatena.ne.jp/ja/documents/bookmark/apis/getinfo" title="はてなブックマークエントリー情報取得API - Hatena Developer Center">はてなブックマークエントリー情報取得API &#8211; Hatena Developer Center</a> の jsonlite を JSONP で</li>
<li><a href="http://code.google.com/p/otterapi/wiki/Resources" title="Resources - otterapi - Project Hosting on Google Code">Resources &#8211; otterapi &#8211; Project Hosting on Google Code</a> の trackbacks を JSONP で</li>
</ul>
<p>どちらも、よく整理されたキレイな形式のデータが返ってくるので、そいつをもとに DOM を組み立てるだけの簡単なお仕事です。</p>
<p>数年前に同様の作業に取り組んだときは、JSONP のこともよく分かっていなかったし、<a href="http://jquery.com/" title="jQuery: The Write Less, Do More, JavaScript Library">jQuery</a> もなかったし、ひどく散らかったコードを書いて「とりあえず動いたからヨシ！」みたいな気持ちでした。そのときに比べたら、ずいぶんとコンパクトに実装できたものです。</p>
<p><a href="http://code.google.com/p/otterapi/" title="otterapi - Project Hosting on Google Code">otterapi</a> の方は、なんかよく分からないけれど色々と機能があって、シーンに合わせて活用できると強力そうです。軽く眺めて、記憶に留めておこうと思いました。</p>
