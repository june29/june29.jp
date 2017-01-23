+++
title = "環境整備中"
date = "2007-11-19T22:49:54+09:00"
slug = "maintenance"
draft = false

+++

<p>久しぶりの更新！けっこうテンパっていて更新が滞っています．</p>
<p>twitterなどではさんざん言っていたけどここでは言っていなかった．MacBookを買いました！ただいま環境整備中です．なにせ初めてのMacですから，何も分からないボクは大変です．WindowsもMacもそこそこに使えるようになりたいのでガンバります．</p>
<p><a href="http://d.hatena.ne.jp/june29">はてなダイアリーの方</a>で環境整備記録を付けていたりします．超絶に初歩的な内容です．</p>
<p>色々と整理していたら，自分でもよく覚えていないユーザスクリプトが出てきたので，なんとなくここに貼っておく．</p>
<pre>
// ==UserScript==
// @name           CNET Japan URL Normalizr
// @namespace      http://june29.jp/
// @include        http://japan.cnet.com/*?ref=rss
// ==/UserScript==

(function(){
        var href = location.href;
        location.href = href.replace(/\?ref=rss/, "");
})();
</pre>
<p>CNETのRSS経由のURLをなんとかするスクリプトだなあ．これのおかげで，間違えてref=rssの方をブックマークしたりせずに済んでいたのだな．しかしもっと良い方法がありそうだ．</p>
