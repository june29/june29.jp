+++
title = "Electron製メールソフト「Nylas N1」を起動してみた"
date = "2015-10-24T23:04:38+09:00"
slug = "230438"
draft = false
og_image = "post/2015/10/24/230438-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2015/10/24/230438"

+++

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2015/10/24/230438-20151024225235.png" alt="f:id:june29:20151024225235p:plain" title="f:id:june29:20151024225235p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p><a href="https://nylas.com/N1">N1 - The extensible, open source mail client.</a></p>

<p>これちょっと気になっていて、軽く試してみた。</p>

<p><a href="http://june29.hatenablog.jp/entry/2015/09/08/114953" title="Electron をちょっと触ってみて、なるほどこれは手軽だな〜と思ってテンションが上がった。手順通りにやるだけで MyApp.app と MyApp.exe が生成されてすごい。無駄に Windows を起動して exe がちゃんと動くことを確認しちゃうほどの浮かれ具合。 あと、21世紀のこういうやつ。 Atom -…">ElectronとかJavaScriptとか</a>で書いた通り、エディタやらターミナルやら、基本となるソフトウェアが次々と <a class="keyword" href="http://d.hatena.ne.jp/keyword/JavaScript">JavaScript</a> で実装されるようになってきて、いい流れだな〜と思っている。<a href="http://june29.hatenablog.jp/entry/2015/10/04/175856" title="なんやかんやで、かれこれ15年くらいは Emacs 系のエディタを使ってきたことになる。とはいえ、ばりばりにカスタマイズして使ってきたわけでもないので、そんなに Emacs を手放せない体になっているわけでもない。 Atom は、発表された当初から「ためしに」と思ってインストールしてあって、Markdown で文章を書…">Atomを規定のエディタに設定しますか？</a>を書いたころから、日常的に <a class="keyword" href="http://d.hatena.ne.jp/keyword/Atom">Atom</a> を使うようにもなってきていて、そんなときに Nylas N1 も見つけて、期待を持ったわけです。メーラも、エディタと同様に、ずいぶんと昔に作られたものを、積極的な理由もなく使っていたりする。自分で気軽に<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%D7%A5%E9%A5%B0%A5%A4%A5%F3">プラグイン</a>を書けるメーラとなると興味もわく。</p>

<p>以下、雑感。</p>

<ul>
<li>設定ファイルは <code>~/.nylas</code> 以下に保存される、これモダンでいいな</li>
<li>メールのデータも <code>~/.nylas</code> ディレクトリ内の <code>edgehill.db</code> ってファイルに保存されるっぽい</li>
<li>試しに <code>~/.nylas</code> の内容を <a class="keyword" href="http://d.hatena.ne.jp/keyword/Dropbox">Dropbox</a> に置くようにしたら<a class="keyword" href="http://d.hatena.ne.jp/keyword/%CA%A3%BF%F4">複数</a> <a class="keyword" href="http://d.hatena.ne.jp/keyword/Mac">Mac</a> 間で簡単に共有できた</li>
<li>でもデータファイルはコンフリクトが発生すると破損しそうでちょっと怖いな</li>
<li>データファイルは <code>.gitignore</code> に追加しちゃって、設定だけ Git 管理の方がいいのかも…？</li>
<li>
<code>main-window-state.json</code> にはウィンドウサイズなんかが記録される</li>
</ul>


<p><a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%D7%A5%E9%A5%B0%A5%A4%A5%F3">プラグイン</a>もゲッティンスターティドしたみたんだけど、自分の発想が貧困で「メーラにこういう機能を追加したい！」ってのが浮かんでいなくて、ぼんやりとした作業をしてしまった。なんか、キラー<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%D7%A5%E9%A5%B0%A5%A4%A5%F3">プラグイン</a>みたいなのが登場したら一気に魅力が増すこともあるかもしれない。</p>

<p>結果的に「<a class="keyword" href="http://d.hatena.ne.jp/keyword/Gmail">Gmail</a> がめちゃめちゃよくできているんだな〜」というのを再認識することになった。まだ、大量のメールを扱おうとすると不安定な挙動を見せることもあるので、今後に期待という感じ。わくわく。</p>
