+++
title = "RESTroom"
date = "2016-01-06T13:56:14+09:00"
slug = "restroom"
draft = false
og_image = "post/2016/01/06/restroom-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/restroom"

+++

<p><a href="http://eleclog.quitsq.com/2016/01/restful-toilet.html">トイレにRESTfulなAPIを実装してみた : Eleclog.</a> がおもしろかった。ブックマークコメント欄の<a class="keyword" href="http://d.hatena.ne.jp/keyword/%C2%E7%B4%EE%CD%F8">大喜利</a>もおもしろかった、ってのは余談として。</p>

<p>ところで、もし自分が設計者なら「トイレに関する操作を、どのようにリソースの <a class="keyword" href="http://d.hatena.ne.jp/keyword/CRUD">CRUD</a> に落とし込むだろうか」って考えた。これは Web <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> を開発する人々にとっては、設計のよいエクササイズになるのではないか、と思った。「Internet of Things」と叫ばれる時代において、現実世界のアレやコレやをリソースとして定義して <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> 経由でナンチャラやカンチャラするシーンは、今後、増えてくるのかもしれないので。</p>

<p>件のエントリよりリンクされている<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%BD%A1%BC%A5%B9%A5%B3%A1%BC%A5%C9">ソースコード</a>を見てきた。<a class="keyword" href="http://d.hatena.ne.jp/keyword/Android">Android</a> アプリの方のコードが、今回扱う話題に関しては都合がよかったのでこっちを。</p>

<p><a href="https://github.com/9SQ/RESTful-Toilet-App">https://github.com/9SQ/RESTful-Toilet-App</a></p>

<p>MainActivity あたりを見ればよさそう。</p>

<p><a href="https://github.com/9SQ/RESTful-Toilet-App/blob/7e0375883766f186de4fafd365d2f30bcb46b559/app/src/main/java/com/quitsq/toiletcontrol/MainActivity.java">https://github.com/9SQ/RESTful-Toilet-App/blob/7e0375883766f186de4fafd365d2f30bcb46b559/app/src/main/java/com/quitsq/toiletcontrol/MainActivity.java</a></p>

<p>一部を抜粋してみる。</p>

<pre class="code lang-java" data-lang="java" data-unlink>buttonRear.setOnClickListener(<span class="synStatement">new</span> View.OnClickListener() {
    <span class="synPreProc">@Override</span>
    <span class="synType">public</span> <span class="synType">void</span> onClick(View v) {
        httpRequest(<span class="synConstant">"POST"</span>, <span class="synConstant">"rear"</span>);
    }
});

buttonSoft.setOnClickListener(<span class="synStatement">new</span> View.OnClickListener() {
    <span class="synPreProc">@Override</span>
    <span class="synType">public</span> <span class="synType">void</span> onClick(View v) {
        httpRequest(<span class="synConstant">"POST"</span>, <span class="synConstant">"soft"</span>);
    }
});

buttonBidet.setOnClickListener(<span class="synStatement">new</span> View.OnClickListener() {
    <span class="synPreProc">@Override</span>
    <span class="synType">public</span> <span class="synType">void</span> onClick(View v) {
        httpRequest(<span class="synConstant">"POST"</span>, <span class="synConstant">"bidet"</span>);
    }
});

buttonStop.setOnClickListener(<span class="synStatement">new</span> View.OnClickListener() {
    <span class="synPreProc">@Override</span>
    <span class="synType">public</span> <span class="synType">void</span> onClick(View v) {
        httpRequest(<span class="synConstant">"POST"</span>, <span class="synConstant">"stop"</span>);
    }
});

buttonBig.setOnClickListener(<span class="synStatement">new</span> View.OnClickListener() {
    <span class="synPreProc">@Override</span>
    <span class="synType">public</span> <span class="synType">void</span> onClick(View v) {
        httpRequest(<span class="synConstant">"DELETE"</span>, <span class="synConstant">"big"</span>);
    }
});

buttonSmall.setOnClickListener(<span class="synStatement">new</span> View.OnClickListener() {
    <span class="synPreProc">@Override</span>
    <span class="synType">public</span> <span class="synType">void</span> onClick(View v) {
        httpRequest(<span class="synConstant">"DELETE"</span>, <span class="synConstant">"small"</span>);
    }
});
</pre>


<p><code>bidet</code> ってたぶん「ビデ」のことだよな〜、とか、無駄な知識を獲得したりもしたけれど、これも余談だ。ぼくがおもしろいと感じたのは「DELETE big」「DELETE small」している処理。これは「大で流す」「小で流す」に相当するものだと思う。</p>

<p>ぼくは当初「水を流す、だから、PUT water かなぁ」とか思ったりしていたのだけど。これを DELETE で表現するのがおもしろいと思った。DELETE が成功したときに <code>204 No Content</code> が返ってきたら「ちゃんと流れたな」と感じられてよさそう。なんの話だ。</p>
