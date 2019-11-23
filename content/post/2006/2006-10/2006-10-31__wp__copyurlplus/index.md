+++
title = "Copy URL+"
date = "2006-10-31T18:00:58+09:00"
slug = "copyurlplus"
draft = false

+++

<p>かなり前に導入したFirefoxの拡張<a href="http://copyurlplus.mozdev.org/" target="_blank">Copy URL+</a>の設定をメモしていなかったので，思いついた今，メモしておきます．新しいマシンの設定をしていると昔の自分の設定メモが役立ちます．<br />
Copy URL+の存在は<a href="http://caramel-tea.com/2006/03/fx_blogging/" target="_blank">caramel*vanilla » blogのためのFirefoxの拡張</a>で知りました．いつもlomoさん発信の情報にはお世話になっています．<br />
Copy URL+を使うと，Firefoxのコンテキストメニューに閲覧中のドキュメントに関するコピーメニューを簡単に追加することができます．単純にタイトル付きのリンクを作成したり，選択部分を引用形式でリンクにしたり，SimpleAPIのサムネイル付きリンクを作成したりと，かなり自由度の高い設定が可能です．以下に例としてボクの設定を記します．</p>
<p>user.js</p>
<p>[code]<br />
// Copy URL+<br />
user_pref(&#8216;copyurlplus.menus.1.label&#8217;, &#8216;タイトル付きリンクを作成&#8217;);<br />
user_pref(&#8216;copyurlplus.menus.1.copy&#8217;, &#8216;<a href="%URL%" target="_blank">%TITLE%</a>&#8216;);<br />
user_pref(&#8216;copyurlplus.menus.2.label&#8217;, &#8216;選択文字列をタイトルとしてリンクを作成&#8217;);<br />
user_pref(&#8216;copyurlplus.menus.2.copy&#8217;, &#8216;<a href="%URL%" target="_blank">%SEL%</a>&#8216;);<br />
user_pref(&#8216;copyurlplus.menus.3.label&#8217;,&#8217;サムネイルを作成&#8217;);<br />
user_pref(&#8216;copyurlplus.menus.3.copy&#8217;,&#8217;<a href="%URL%" title="%TITLE%" target="_blank"><img src="http://img.simpleapi.net/small/%URL%" alt="%TITLE%" hspace="4" vspace="4" border="0" /></a> <br /><a href="%URL%" title="%TITLE%" target="_blank"><strong>%TITLE%</strong></a>&#8216;);<br />
user_pref(&#8216;copyurlplus.menus.4.label&#8217;,&#8217;サムネイルを作成(センタリング)&#8217;);<br />
user_pref(&#8216;copyurlplus.menus.4.copy&#8217;,&#8217;<center><a href="%URL%" title="%TITLE%" target="_blank"><img src="http://img.simpleapi.net/small/%URL%" alt="%TITLE%" hspace="4" vspace="4" border="0" /></a> <br /><a href="%URL%" title="%TITLE%" target="_blank"><strong>%TITLE%</strong></a></center>&#8216;);<br />
user_pref(&#8216;copyurlplus.menus.5.label&#8217;,&#8217;引用&#8217;);<br />
user_pref(&#8216;copyurlplus.menus.5.copy&#8217;,&#8217;</p>
<blockquote><p>%EOL%%SEL%</p>
<p><a href="%URL%" title="%TITLE%" target="_blank"><strong>%TITLE%</strong></a>%EOL%</p></blockquote>
<p>&#8216;);<br />
user_pref(&#8216;copyurlplus.menus.6.label&#8217;,&#8217;引用(はてなダイアリー用)&#8217;);<br />
user_pref(&#8216;copyurlplus.menus.6.copy&#8217;,&#8217;>>%EOL%%SEL%</p>
<p><a href="%URL%" title="%TITLE%" target="_blank"><strong>%TITLE%</strong></a>%EOL%< <');
[/code]

<a href="http://www.flickr.com/photos/june29/285144434/" title="Photo Sharing"><img src="http://static.flickr.com/106/285144434_78a6cc28b4_o.png" alt="Copy URL+" /></p>
<p>自分で項目を追加するときは<a href="http://copyurlplus.mozdev.org/customize.html" target="_blank">mozdev.org &#8211; copyurlplus: customize</a>を見るとよいです．</p>
<p><a href="http://cdn.mozdev.org/chromedit/" target="_blank">ChromEdit</a>がないとuser.jsを書くのも面倒ですが，Firefox 2.0はChromEditに未だ未対応のようで… 代わりになるものなどがあればいいな．</p>
