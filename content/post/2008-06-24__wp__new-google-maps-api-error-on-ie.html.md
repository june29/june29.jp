+++
title = "新しい Google Maps API が IE でエラー"
date = "2008-06-24T22:07:20+09:00"
slug = "new-google-maps-api-error-on-ie"
draft = false

+++

<p>いつの間にか <a href="http://code.google.com/intl/ja/apis/maps/">Google Maps API</a> は <a href="http://code.google.com/intl/ja/apis/ajax/">Google AJAX API</a> に統合されていたんですね！</p>
<blockquote>
<p>Google Maps API は、複数の Google AJAX API を読み込んで使用するための共通の名前空間を作成する Google AJAX API ローダーに統合されています。</p>
<p><a class="quote" href="http://code.google.com/intl/ja/apis/maps/documentation/reference.html" target="_blank">Quotation from <strong>Google マップ API リファレンス &#8211; Google Maps API &#8211; Google Code</strong></a></p>
</blockquote>
<p>地図アプリを作ろうとしたときにこの変更を知ったので，新しい方で書いてみることにしたのでした！</p>
<pre>
&lt;script type="text/javascript" src="http://www.google.com/jsapi?key=XXXXAPIKEYXXXX"&gt;&lt;/script&gt;
&lt;script type="text/javascript"&gt;
  //&lt;![CDATA[
  google.load("maps", "2.x");

  google.setOnLoadCallback(initialize);

  function initialize() {
    if(google.maps.BrowserIsCompatible()){
      var map = new google.maps.Map2(document.getElementById("map"));
    }
  }
&lt;/script&gt;
</pre>
<p>JavaScript のエンドポイントが変わっていたり， google.load メソッドを使って Google Maps のスクリプトを読み込ませるようになっていたり，これまでの G プレフィクスが google.maps に置き換わっていたり ( GMap2 は google.maps.Map2 に )，違いは色々あるんですけど，処理の流れなんかは以前と変わりありませんです．</p>
<p>どれどれと思って Firefox， Safari， Opera で開いてみたら，問題なくいつもの地図が表示されたんですが，なんとビックリ！ IE 7 で開いたらエラーになっちゃったんですよ．</p>
<p><img src="http://img.skitch.com/20080624-xnpipu8egrn7w4dr2sp8188m65.png" alt="Runtime error"/></p>
<p>うぇーと思ってエラーを追跡してみたところ ( 手伝ってくれた人ありがとう！ )，どうやら <a href="http://maps.google.com/maps?file=googleapi&#038;v=2.x" title="googleapi">http://maps.google.com/maps?file=googleapi&#038;v=2.x</a> に含まれる日本語文字列が問題になっているっぽいってことが分かりました．これは Google 先生の側で対処してもらうしかないのでしょうか…！</p>
<p>ひとまず，古い方の書き方に直したら動きました．これから Google Maps API を使うって人，何か分かったら教えてほしいです．このエラーの話は抜きにしても，新旧 API の情報が入り乱れると混乱しますね．</p>
