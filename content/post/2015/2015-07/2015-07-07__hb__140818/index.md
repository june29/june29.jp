+++
title = "dokkuを活用する"
date = "2015-07-07T14:08:18+09:00"
slug = "140818"
draft = false
og_image = "post/2015/07/07/140818-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2015/07/07/140818"

+++

<p>社内では dokku のサーバが動いているので、これを活用するぞ。</p>

<p>Docker powered mini-Heroku in around 100 lines of <a class="keyword" href="http://d.hatena.ne.jp/keyword/Bash">Bash</a>
<a href="https://github.com/progrium/dokku">https://github.com/progrium/dokku</a></p>

<p>Dokku Documentation
<a href="http://progrium.viewdocs.io/dokku/">http://progrium.viewdocs.io/dokku/</a></p>

<p>もともとぼくは Heroku 大好きっ子で、ちょっとしたものは Procfile を書いて Heroku に載せて動かす、ってことを何年もやってきた。社内に dokku があってうれしい〜と思いつつも「Heroku の方が慣れているし、別に困らないから Heroku でいいか」という惰性があったのだけれど、社内ネットワーク越しにしかアクセスできないリソースについてゴニョゴニョっていうシーンで、よし、じゃあ dokku に引っ越すか、となったのだ。</p>

<p>Heroku の基本機能に相当するものはだいたい備えていて、似ているけれど微妙に違うコマンドなんかがあると「あれ？」ってなるけれど、少しずつ理解が進むにつれて手に馴染んできた。たとえば config コマンドは、</p>

<pre class="code" data-lang="" data-unlink># Heroku

$ heroku config --app appname
$ heroku config:set SAMPLE_VAR="sample_value" --app appname

# dokku

$ dokku config appname
$ dokku config:set appname SAMPLE_VAR="sample_value"</pre>


<p>みたいな対応になる。似ているけれど微妙に違っていてややこしいぞ。dockland を使うと、だいぶ Heroku っぽく、というかシンプルに便利に使えるようになりそう。</p>

<p>uetchy/dockland
<a href="https://github.com/uetchy/dockland">https://github.com/uetchy/dockland</a></p>

<p>というわけで、いま Heroku に預けている子を dokku にお引っ越しして、社内リソースにアクセスする処理も追加してばんばんやっていくぞ。</p>
