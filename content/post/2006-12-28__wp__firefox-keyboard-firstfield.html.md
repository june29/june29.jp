+++
title = "キーボードショートカットでfirstfield"
date = "2006-12-28T02:11:08+09:00"
slug = "firefox-keyboard-firstfield"
draft = false

+++

<p>またしてもFirefoxのキーボードショートカット話です．こればっかり．事の発端は下記のエントリです．</p>
<blockquote><p>
検索をするときには Google を使うことが多いです。いろいろな方法で Google にアクセスすることが多いわけですが、最終的に Google のサイトに飛んで検索をすると希望のものが出てこない場合、さらにキーワードを追加したり、変更したりするわけです。そのときにちょっとしたことですが、検索フォームの中にフォーカスが持っていけるようになると便利です。</p>
<p><a href="http://kengo.preston-net.com/archives/002977.shtml" title="Going My Way: Google の検索フォームにフォーカスする Google Search Box AccessKey" target="_blank"><strong>Going My Way: Google の検索フォームにフォーカスする Google Search Box AccessKey</strong></a>
</p></blockquote>
<p>確かにその通りですね．カーソルを検索フォームまで移動させるには，けっこうなエネルギーが必要です．キーボードショートカットでカーソル移動できたら最高です．でもこれは，Googleの検索結果のページに限定される話ではありません．<a href="http://openstratus.com/73/shortcut-cheat" target="_blank">マウスを窓から投げ捨てろ！ショートカットであいつに差を付けるメソッド | Queue</a>で紹介されている拡張機能<a href="http://firstfield.mozdev.org/index.html" target="_blank">firstfield</a>は，まさにすべてのサイトでキーボードショートカットによるカーソル移動を目指したものです．具体的には，閲覧中のページにおいて最初に出現するテキストフォームにカーソルを合わせます．</p>
<p>さっそく導入してみましょう… と思いきや，現行のFirefoxには対応していないようです．install.rdfを偽装してもダメでした．仕方がないのでxpiファイルをzipにリネームして解凍し，XULのソースコードの一部をkeyconfigに割り当てました．設定には，<a href="http://june29.jp/2006/10/03/firefox-keyconfig/">以前のエントリ</a>で紹介した拡張機能keyconfigとfunctions for keyconfigが必要になります．</p>
<p><a href="http://www.flickr.com/photos/june29/335246344/" title="Photo Sharing"><img src="http://farm1.static.flickr.com/126/335246344_9dc5d420fa_o.jpg" width="424" height="402" alt="firstfield keyconfig" /></a></p>
<p>[code]<br />
var doc = window.content.document;</p>
<p>if (!doc) return;</p>
<p>for (var i=0; i < doc.forms.length; i++) {
  var elements = doc.forms[i].elements;

  for (var j=0; j < elements.length; j++) {
    if (elements[j].type == "text") {
       elements[j].focus();
       elements[j].select();
       return;
    }
  }
}
[/code]

キーは本家に習って「Ctrl+;」としました(なぜか表示は「Ctrl+=」になる)．この場合「大きく[文字サイズ]」のキーと競合するのでこちらをOFFにしておきます．ボクはまず使わない機能なので問題ありません．あとはFirefoxを再起動すればキーば有効になります．いくつかのサイトで動作確認を行いました．

Google

<a href="http://www.flickr.com/photos/june29/335246503/" title="Photo Sharing"><br />
<img src="http://farm1.static.flickr.com/149/335246503_85e41ff93d_o.jpg" width="500" height="120" alt="firstfield - Google" /></p>
<p>cameraLady</p>
<p><a href="http://www.flickr.com/photos/june29/335246680/" title="Photo Sharing"><img src="http://farm1.static.flickr.com/152/335246680_2c142da4a1_o.jpg" width="500" height="120" alt="firstfield - cameraLady" /></a></p>
<p>mixi</p>
<p><a href="http://www.flickr.com/photos/june29/335246883/" title="Photo Sharing"><img src="http://farm1.static.flickr.com/143/335246883_7f1ae56d4a_o.jpg" width="500" height="120" alt="firstfield- mixi" /></a></p>
<p>YouTube</p>
<p><a href="http://www.flickr.com/photos/june29/335247090/" title="Photo Sharing"><img src="http://farm1.static.flickr.com/130/335247090_a44bf17874_o.jpg" width="500" height="120" alt="firstfield - YouTube" /></a></p>
<p>del.icio.us</p>
<p><a href="http://www.flickr.com/photos/june29/335247282/" title="Photo Sharing"><img src="http://farm1.static.flickr.com/124/335247282_157cba1cae_o.jpg" width="500" height="120" alt="firstfield - del.icio.us" /></a></p>
<p>はてなダイアリー</p>
<p><a href="http://www.flickr.com/photos/june29/335247456/" title="Photo Sharing"><img src="http://farm1.static.flickr.com/154/335247456_10b1182fb5_o.jpg" width="500" height="120" alt="firstfield - はてなダイアリー" /></a></p>
<p>ボクが確認したかぎりでは割と使えそうです．ただ，ブログのエントリページで，検索フォームよりコメントの名前欄にカーソルが移動してしまうのは難点です．もう少し工夫すればもっと良いものができそうなのですが，今日はこの辺で終わりにします．</p>
<p>実は当初はGreasemonkeyでこれを実現しようとしていました．「せっかく<a href="http://www.amazon.co.jp/exec/obidos/ASIN/4798015350/cameralady-22/ref=nosim/">Greasemonkey本</a>ももらったし！」と意気込んでみたものの，どうも上手くいかなくて断念しちゃいました．Greasemonkeyでの実装があれば，ぜひソースを見て勉強したいです．</p>
<h3>追記</h3>
<p><a href="http://blog.libelabo.jp/2006/12/28/greasemonkey-focus-field/" target="_blank">Focus Field &#8211; Libelablog</a>にGreasemonkeyでの実装があります！</p>
