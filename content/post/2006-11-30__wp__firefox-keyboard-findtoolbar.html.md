+++
title = "Firefoxのキーコンフィグ : Ctrl+Fで検索バーの開閉"
date = "2006-11-30T22:04:18+09:00"
slug = "firefox-keyboard-findtoolbar"
draft = false

+++

<p>過去のエントリでこんなことを書きました．</p>
<blockquote><p>
ページ内検索のボックスをキーボードショートカットで表示/非表示切り替えできたらな</p>
<p><a href="http://june29.jp/2006/11/08/review-firefox/" title="Firefox 2.0とエクステンション - cameraLady" target="_blank"><strong>Firefox 2.0とエクステンション &#8211; cameraLady</strong></a>
</p></blockquote>
<p>デフォルトの設定では，Ctrl+Fで検索バーを開くことはできますが，閉じることはできません．ESCキーを使って閉じるか，マウスで「×」(閉じる)ボタンを押すか，はたまたマウスジェスチャーで操作するか… ボクはもっと良い方法があればなぁと思いながらもガマンして使ってきました．</p>
<p>これを解決する方法が<a href="http://d.hatena.ne.jp/nozom/20061129/1164802318" target="_blank">ヒビノキロク &#8211; ページ内検索バーに関する覚え書き</a>で紹介されていたので飛び付きました！以下にボクが行った設定の手順をメモしておきます．</p>
<p>まず，この設定を行うためには<a href="http://june29.jp/2006/10/03/firefox-keyconfig/">Firefoxのキーコンフィグ</a>というエントリで紹介した2つの拡張機能が必要になります．</p>
<p>ツールメニューの中から「キーボードショートカットのカスタマイズ」を選びます．続いて「新しいキーを追加」ボタンを押します．キーに好きな名前をつけて，ソースコードを次のようにします．</p>
<p>[code]<br />
var bar = document.getElementById(&#8220;FindToolbar&#8221;);<br />
if (bar.hidden) {<br />
  gFindBar.onFindCmd();<br />
  var findField = document.getElementById(&#8220;find-field&#8221;);<br />
  findField.value = &#8221;;<br />
} else {<br />
  gFindBar.closeFindBar();<br />
}<br />
[/code]</p>
<p><a href="http://www.flickr.com/photos/june29/310126991/" title="Photo Sharing"><img src="http://static.flickr.com/110/310126991_fa03639ed1_o.jpg" width="367" height="226" alt="キーボードショートカットのカスタマイズ" /></a></p>
<p><a href="http://www.flickr.com/photos/june29/310126992/" title="Photo Sharing"><img src="http://static.flickr.com/104/310126992_dde912d73c_o.jpg" width="500" height="197" alt="新しいキーを追加" /></a></p>
<p><a href="http://www.flickr.com/photos/june29/310126994/" title="Photo Sharing"><img src="http://static.flickr.com/109/310126994_f13e55fbaa_o.jpg" width="400" height="400" alt="検索バーの開閉" /></a></p>
<p>あとは好きなキーボードショートカットを割り当てるだけです．ボクはキーの名前を「検索バーの開閉」としてショートカットを「Ctrl+F」に割り当てました．「次を検索」と「前を検索」はそれぞれ「Enter」「Shift+Enter」で行います．これでキーボード操作だけで快適にページ内のテキスト検索ができるようになりました．<a href="http://d.hatena.ne.jp/nozom/" target="_blank">id:nozom</a>さん，ありがとうございます！</p>
<h3>関連エントリ</h3>
<ul>
<li><a href="http://june29.jp/2006/11/08/review-firefox/">Firefox 2.0とエクステンション</a></li>
</ul>
<p>自分ってば，この手のネタが好きなんですね．カスタマイズ万歳！ しかし，カスタマイズすればするほど初期設定のPCが使えなくなって困ります…</p>
<h3>追記</h3>
<p><ins><a href="https://addons.mozilla.org/en-US/firefox/addon/5239">XUL/Migemo :: Firefox Add-ons</a> が素晴らしすぎるのでこれを使うといいですね！</ins></p>
