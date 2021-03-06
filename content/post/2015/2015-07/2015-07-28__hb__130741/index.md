+++
title = "Rails の Routing あれこれ"
date = "2015-07-28T13:07:41+09:00"
slug = "130741"
draft = false
og_image = "post/2015/07/28/130741-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2015/07/28/130741"

+++

<script src="https://gist.github.com/june29/7749a5e5da8351b1e755.js"></script>


<h3>やろうとしたこと</h3>

<p>users っていうリソースの下に image っていうルーティングを追加して、指定 User のア<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%B3%A5%F3%B2%E8">イコン画</a>像を返してくれるようなアクションを定義したかった、とかそういう状況。</p>

<h4>case1</h4>

<p>まず思い付くままに書いてみたら params に渡るキーが <code>user_id</code> になっちゃったのよね。他のアクションでは <code>id</code> だから、これだと処理を共通化しにくくて困る。</p>

<h4>case2</h4>

<p>とにかく欲しいルーティングを手に入れる！と思って resources の外に強引に書いたケース。欲しいものは手に入ったけれど、コードの納まりが悪くてなんだかな〜という気持ちになる。</p>

<h4>case3</h4>

<p><code>member</code> を指定すればよいのだった、と気付いて case1 に <code>member</code> を付けた版の実装を試す。これでまぁ、すっきりしたコードで欲しかったルーティングは手に入ったのだけれど、case1 と case3 を比べてみると <code>user_image_path</code> と <code>image_user_path</code> の違いがあることに気付いて、これをリファレンスなしでも言えるようにはなれないな〜と思った。なんか <code>collection</code> の方は明示してやらないといけない理由がわかるのだけれど、<code>member</code> の方の指定の有無で微妙に挙動が変わるのも、なかなか理解が難しいとあらためて思った。</p>

<h4>another case</h4>

<p><a class="keyword" href="http://d.hatena.ne.jp/keyword/Rails">Rails</a> の Routing の細かい挙動を「こういうときはこう、こういうときはこのオプション付ける」とか覚えるより、そういうのに依存しないコードにした方がよいのでは〜？という気持ちになった。つまり <a href="http://qiita.com/r7kamura/items/dea3c58b6fc81142a363" title="Rails - Resource Routingつらくね？ - Qiita">Rails - Resource Routingつらくね？ - Qiita</a> みたいなお話です。</p>

<p><a class="keyword" href="http://d.hatena.ne.jp/keyword/Rails">Rails</a> の Routing は開発者間の共通認識を育てるのにはだいぶ貢献してくれていて、そこで共通認識を持てたもの同士なら、列挙型で書いてしまってよいのでは〜、と思った次第です。よもやま。</p>
