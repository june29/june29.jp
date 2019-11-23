+++
title = "Homebrewで古いバージョンのパッケージを無理矢理インストールする"
date = "2016-02-14T15:39:47+09:00"
slug = "153947"
draft = false
og_image = "post/2016/02/14/153947-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2016/02/14/153947"

+++

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2016/02/14/153947-20160214144932.png" alt="f:id:june29:20160214144932p:plain" title="f:id:june29:20160214144932p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>先日から弊社にて<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%F3">インターン</a>をシップしておりまして、ぼくは畏れ多くもメンターというやつを担当させてもらっています。<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%F3%A5%B7%A5%C3%A5%D7">インターンシップ</a>というのは現実世界の出来事であって、そして現実世界には、のっぴきならない事情というものがあったりして、止むを得ず、最新版ではないパッケージをインストールしなければならなかったりします。</p>

<p>以前は <code>brew versions</code> っていうコマンドがあったのだけど <a href="https://github.com/Homebrew/homebrew/pull/30298">brew-versions: move to Contributions. by mikemcquaid · Pull Request #30298 · Homebrew/homebrew</a> で廃止されて、今は代替手段として <a href="https://github.com/Homebrew/homebrew-versions">https://github.com/Homebrew/homebrew-versions</a> が用意されていたりするのだけれどここのラインナップがまぁまぁで。このエントリでは、無理矢理インストールする方法をメモしておきます。</p>

<h4>git fetch --unshallow</h4>

<p>Homebrew をインストールすると <code>/usr/local</code> に <a href="https://github.com/Homebrew/homebrew">https://github.com/Homebrew/homebrew</a> が <code>fetch</code> されてくる。けど、ぼくの知らない間に <a href="https://github.com/Homebrew/install/pull/8">Default to shallow clone by xu-cheng · Pull Request #8 · Homebrew/install</a> ってのがあって、2015年4月から「デフォルトでは <code>shallow</code> で <code>fetch</code> する」ことになっていて、<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%F3">インターン</a>生の環境で <code>git log</code> を見てみたらすべてが 1 commit にまとめられていて過去のバージョンを参照できなくてビビった。すでに 60,000 以上の commit を重ねてきた Homebrew の<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%EA%A5%DD%A5%B8%A5%C8%A5%EA">リポジトリ</a>、畳んでおかないと重くて仕方ない、ということじゃろうか。</p>

<p><code>git fetch --unshallow</code> っていう初めて実行するコマンドで無事にすべての commit を表示できた俺たち一行は、対象パッケージの古い Formula を <code>checkout</code> して、それから <code>brew install</code> することでご所望のバージョンをインストールすることができた。おつかれさまでした。</p>

<h4>手順まとめ</h4>

<p>(ここでは「<a class="keyword" href="http://d.hatena.ne.jp/keyword/mysql">mysql</a>」の「5.6.27」をインストールしたい場合の例を示す)</p>

<pre class="code" data-lang="" data-unlink>$ cd /usr/local
$ git fetch --unshallow
$ git log Library/Formula/mysql.rb # 5.6.27 の SHA-1 hash である「e466819900719b711f572837750654baf3bf85cb」を見つけてくる
$ git checkout e466819900719b711f572837750654baf3bf85cb Library/Formula/mysql.rb
$ brew install mysql</pre>
