+++
title = "Socialtunesのブックマークレット"
date = "2006-08-25T02:00:50+09:00"
slug = "socialtunes-bookmarklet"
draft = false

+++

<p>書籍などの持ち物管理に<a href="http://socialtunes.net/user/june29">Socialtunes</a>を利用しています．自分と興味が近いと思われるユーザを教えてくれたり，Amazonアソシエイトにも対応していたりして便利です．<a href="http://qooqle.jp/">Qooqle</a>や<a href="http://kotonoha.cc/">コトノハ</a>といい，<a href="http://solvalou.net/">Ohidaさん</a>の生み出すサービスはステキだなぁ．</p>
<p>ここ最近，Amazonの商品ページのURLって変わったんですかね．<a href="http://socialtunes.net/util">Socialtunesのブックマークレット</a>が機能しなくなっていたので，書き直しておきました．</p>
<p>変更前<br />
[code]<br />
javascript:url=location.href;r=url.match(/ASIN\/([^\/]+)/i);n=RegExp.$1;void(window.open(&#8216;http://socialtunes.net/item/&#8217;+n+&#8217;/&#8217;));<br />
[/code]</p>
<p>変更後<br />
[code]<br />
javascript:url=location.href;r=url.match(/product\/([^\/]+)/i);n=RegExp.$1;void(window.open(&#8216;http://socialtunes.net/item/&#8217;+n+&#8217;/&#8217;));<br />
[/code]</p>
<p>「ASIN」のところを「product」に変えただけです．自分用のメモでした．</p>
