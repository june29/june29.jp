+++
title = "毎日の体重が奥さんにバレる仕組み"
date = "2015-05-16T10:42:14+09:00"
slug = "104214"
draft = false
og_image = "http://ecx.images-amazon.com/images/I/315cVg85evL.jpg"
original_url = "http://june29.hatenablog.jp/entry/2015/05/16/104214"

+++

<p>結婚してから、というか、奥さんといっしょに暮らすようになってから、「ふたりの食事の時間は大切にしましょう」との方針のもと、というか、もともとのぼくの食生活が雑すぎたというだけなんだけれど、つまりおいしいものをいっぱい食べるようになって、はい、太りました。</p>
<p>というわけで、これからも食事の時間は大切にしていきつつも、不健康にはならないように健康を管理していきたいと思いましたので、自家用 Slack のメインのチャンネルにぼくの体重が自動通知されるようにしました。</p>
<p>Fitgem で Fitbit <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> を叩いて Ruboty で発言させる、みたいなのを雑につくって運用を開始したので、奥さんに嫌われたくないという恋心駆動で体重を落としていこうと思います。</p>
<p>他にも、なんか取れる情報あったらどんどん Slack に通知させようってなっていて、会話の場が賑やかになるのはけっこういいなぁという感じです。</p>

<div class="section">
    <h5>余談</h5>
    <p>体重の測定と記録には Fitbit <a class="keyword" href="http://d.hatena.ne.jp/keyword/Aria">Aria</a> を使っているんだけれど、公式サイトのページは404になっているし代わりのページも見つからないし、捨て子感がすごい… 設定用の<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%C4%A1%BC%A5%EB">ツール</a>もどこからダウンロードできるのかわからなくて大変だったぞ…！</p>
<p>Fitbit <a class="keyword" href="http://d.hatena.ne.jp/keyword/Aria">Aria</a>™ <a class="keyword" href="http://d.hatena.ne.jp/keyword/Wi-Fi">Wi-Fi</a> Smart Scale - <a href="http://www.fitbit.com/aria">http://www.fitbit.com/aria</a></p>
<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B008Z8QB3O/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/315cVg85evL._SL160_.jpg" class="hatena-asin-detail-image" alt="Fitbit Aria Wi-Fi Smart Scale アリア　ネットワーク対応 多機能体重計　ブラック　並行輸入品" title="Fitbit Aria Wi-Fi Smart Scale アリア　ネットワーク対応 多機能体重計　ブラック　並行輸入品"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B008Z8QB3O/cameralady-22/">Fitbit Aria Wi-Fi Smart Scale アリア　ネットワーク対応 多機能体重計　ブラック　並行輸入品</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> Fitbit</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> </li>
<li><a href="http://d.hatena.ne.jp/asin/B008Z8QB3O/cameralady-22" target="_blank">この商品を含むブログを見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

</div>
<div class="section">
    <h5>追記1</h5>
    <p><a href="https://twitter.com/yksk" title="desc">@yksk</a> さんに教えてもらって、Fitbit のサイト閲覧時の地域設定を「日本」にしていると Fitbit <a class="keyword" href="http://d.hatena.ne.jp/keyword/Aria">Aria</a> のページが404になると知りました。教えてくれてありがとう！</p>
<p>しかし<a class="keyword" href="http://d.hatena.ne.jp/keyword/%B8%A1%BA%F7%A5%A8%A5%F3%A5%B8%A5%F3">検索エンジン</a>の結果にも出てくるページが404になっていて、かつ、実は存在していて方法を知っていればアクセスできる、って状況は悲しいと思いました… ぐすん。</p>

</div>
<div class="section">
    <h5>追記2</h5>
    <p>こちらは <a href="https://twitter.com/hmsk" title="desc">@hmsk</a> さんに教えてもらって、<a href="https://wiki.fitbit.com/display/API/Fitbit+Subscriptions+API" title="desc">Fitbit Subscriptions API</a> を知りました。Fitbit のデータが更新されたら、更新があった旨をお知らせしてもらえる仕組みです。</p>
<p>ちょろっと見てみたら IFTTT に Fitbit の材料も揃っていたので、これを利用して「体重計に乗ったら Slack に通知される」っていうレシピをつくりました。</p>
<p><a href="https://ifttt.com/view_embed_recipe/291634-new-weight-to-slack-channel" target="_blank" class="embed_recipe embed_recipe-l_27" id="embed_recipe-291634"><img src="https://ifttt.com/recipe_embed_img/291634" alt="IFTTT Recipe: New weight to Slack channel connects fitbit to slack"x" style="max-width:100%"></a><script async type="text/javascript" src="//ifttt.com/assets/embed_recipe.js"></script></p>

</div>
