+++
title = "Raspberry Pi で自宅監視システムをつくりはじめた"
date = "2015-09-27T21:15:08+09:00"
slug = "211508"
draft = false
og_image = "post/2015/09/27/211508-og-image.jpg"
original_url = "http://june29.hatenablog.jp/entry/2015/09/27/211508"

+++

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2015/09/27/211508-20150927200526.jpg" alt="f:id:june29:20150927200526j:plain" title="f:id:june29:20150927200526j:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>外出時も自宅の様子を把握したい気持ちになったので、つくろうと思って行動を開始した。なんかそういうことはできるだろう、と思っていたものの、自分は完全にソフトウェアエンジニアなもので、ハードウェアのことはぜんぜんわからなくて、いろいろ調べるところからスタートした。</p>

<p>半日くらいいろいろと調べて、そのときに<a href="http://blog.cloudninja.asia/?p=755" title="desc">Raspberry Piとカメラモジュールとストレージサービスで連続撮影と動画作成 作業編</a>を見つけて読んで、なるほど Raspberry Pi で実現できそうだな〜と感じてポチポチした。</p>

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2015/09/27/211508-20150927202345.png" alt="f:id:june29:20150927202345p:plain" title="f:id:june29:20150927202345p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>揃えたものはだいたい以下の通り。</p>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00T356SFO/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/51minAX9qrL._SL160_.jpg" class="hatena-asin-detail-image" alt="Raspberry Pi 2 Model B (1)" title="Raspberry Pi 2 Model B (1)"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00T356SFO/cameralady-22/">Raspberry Pi 2 Model B (1)</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> Raspberry Pi</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> エレクトロニクス</li>
<li><a href="http://d.hatena.ne.jp/asin/B00T356SFO/cameralady-22" target="_blank">この商品を含むブログ (6件) を見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00NEEA47I/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/517h4-q%2BCsL._SL160_.jpg" class="hatena-asin-detail-image" alt="Raspberry Pi ラズベリー・パイ 超小型パソコン Pi Model B+ / Pi 2 Model B　専用ケ-ス(Clear)" title="Raspberry Pi ラズベリー・パイ 超小型パソコン Pi Model B+ / Pi 2 Model B　専用ケ-ス(Clear)"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00NEEA47I/cameralady-22/">Raspberry Pi ラズベリー・パイ 超小型パソコン Pi Model B+ / Pi 2 Model B　専用ケ-ス(Clear)</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> Raspberry Pi</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> エレクトロニクス</li>
<li><a href="http://d.hatena.ne.jp/asin/B00NEEA47I/cameralady-22" target="_blank">この商品を含むブログを見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00E1GGE40/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/41vGRDyVq6L._SL160_.jpg" class="hatena-asin-detail-image" alt="Raspberry Pi Video Module Raspberry Pi Camera Board 775-7731" title="Raspberry Pi Video Module Raspberry Pi Camera Board 775-7731"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00E1GGE40/cameralady-22/">Raspberry Pi Video Module Raspberry Pi Camera Board 775-7731</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> Raspberry Pi</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> 付属品</li>
<li><a href="http://d.hatena.ne.jp/asin/B00E1GGE40/cameralady-22" target="_blank">この商品を含むブログ (1件) を見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00IJZJKK4/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/41o%2B0Kmf2WL._SL160_.jpg" class="hatena-asin-detail-image" alt="Raspberry Pi  カメラモジュール専用　クリアケース" title="Raspberry Pi  カメラモジュール専用　クリアケース"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00IJZJKK4/cameralady-22/">Raspberry Pi  カメラモジュール専用　クリアケース</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> Raspberry Pi</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> Personal Computers</li>
<li><a href="http://d.hatena.ne.jp/asin/B00IJZJKK4/cameralady-22" target="_blank">この商品を含むブログを見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B003NSAMW2/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/41SijRiI7OL._SL160_.jpg" class="hatena-asin-detail-image" alt="BUFFALO 無線LAN子機 コンパクトモデル 11n技術・11g/b対応 WLI-UC-GNM" title="BUFFALO 無線LAN子機 コンパクトモデル 11n技術・11g/b対応 WLI-UC-GNM"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B003NSAMW2/cameralady-22/">BUFFALO 無線LAN子機 コンパクトモデル 11n技術・11g/b対応 WLI-UC-GNM</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> <a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%D0%A5%C3%A5%D5%A5%A1%A5%ED%A1%BC">バッファロー</a>
</li>
<li>
<span class="hatena-asin-detail-label">発売日:</span> 2010/06/25</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> Personal Computers</li>
<li>
<span class="hatena-asin-detail-label">購入</span>: 44人 <span class="hatena-asin-detail-label">クリック</span>: 226回</li>
<li><a href="http://d.hatena.ne.jp/asin/B003NSAMW2/cameralady-22" target="_blank">この商品を含むブログ (29件) を見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00MWO9MFG/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/31APz6yZLvL._SL160_.jpg" class="hatena-asin-detail-image" alt="Anker® 20W 2ポート USB急速充電器 iPhone 6s/iPhone 6s Plus/iPhone6/iPhone5C/5S/5/4S/4/iPod/iPad/Xperia/GALAXY/ウォークマン等対応【PowerIQ搭載】 (ブラック) 71AN7109-B2A" title="Anker® 20W 2ポート USB急速充電器 iPhone 6s/iPhone 6s Plus/iPhone6/iPhone5C/5S/5/4S/4/iPod/iPad/Xperia/GALAXY/ウォークマン等対応【PowerIQ搭載】 (ブラック) 71AN7109-B2A"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00MWO9MFG/cameralady-22/">Anker® 20W 2ポート USB急速充電器 iPhone 6s/iPhone 6s Plus/iPhone6/iPhone5C/5S/5/4S/4/iPod/iPad/Xperia/GALAXY/ウォークマン等対応【PowerIQ搭載】 (ブラック) 71AN7109-B2A</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> Anker</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> エレクトロニクス</li>
<li><a href="http://d.hatena.ne.jp/asin/B00MWO9MFG/cameralady-22" target="_blank">この商品を含むブログ (1件) を見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00NH124VM/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/41RaXlVr1PL._SL160_.jpg" class="hatena-asin-detail-image" alt="Amazonベーシック USB2.0ケーブル 1.8m (タイプAオス- マイクロタイプBオス)" title="Amazonベーシック USB2.0ケーブル 1.8m (タイプAオス- マイクロタイプBオス)"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00NH124VM/cameralady-22/">Amazonベーシック USB2.0ケーブル 1.8m (タイプAオス- マイクロタイプBオス)</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> AmazonBasics</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> Personal Computers</li>
<li><a href="http://d.hatena.ne.jp/asin/B00NH124VM/cameralady-22" target="_blank">この商品を含むブログを見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B008UR8TZ8/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/51Cndt7KWGL._SL160_.jpg" class="hatena-asin-detail-image" alt="【Amazon.co.jp限定】Transcend microSDHCカード 16GB Class10 (無期限保証) Newニンテンドー3DS 動作確認済み TS16GUSDHC10E (FFP)" title="【Amazon.co.jp限定】Transcend microSDHCカード 16GB Class10 (無期限保証) Newニンテンドー3DS 動作確認済み TS16GUSDHC10E (FFP)"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B008UR8TZ8/cameralady-22/">【Amazon.co.jp限定】Transcend microSDHCカード 16GB Class10 (無期限保証) Newニンテンドー3DS 動作確認済み TS16GUSDHC10E (FFP)</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> <a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%C8%A5%E9%A5%F3%A5%BB%A5%F3%A5%C9">トランセンド</a>・ジャパン</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> Personal Computers</li>
<li><a href="http://d.hatena.ne.jp/asin/B008UR8TZ8/cameralady-22" target="_blank">この商品を含むブログを見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p>調べている段階では「モニタとキーボードも用意しなきゃいけないのかな…？」という不安があったけれど、ネットワーク設定を済ませて <a class="keyword" href="http://d.hatena.ne.jp/keyword/MacBook">MacBook</a> から <a class="keyword" href="http://d.hatena.ne.jp/keyword/ssh">ssh</a> でつないで作業する分にはモニタもキーボードも不要だとわかった。買わなくてよかった。</p>

<h3>セットアップ</h3>

<p><a href="http://qiita.com/morizotter/items/48ad0b17207b0dd66cac">RaspberryPi - Raspberry Pi開封から無線LAN経由でSSH接続して初期設定するまでのマイ・ウェイ（モニタ・キーボード無し） - Qiita</a> がめっちょ参考になった。感謝。</p>

<ul>
<li>microSD に <a href="https://www.raspbian.org/" title="desc">Raspbian</a> のイメージをコピーする

<ul>
<li>自分がダウンロードしたのは 2015-05-05-raspbian-wheezy.zip っていうファイルだった</li>
<li>最初に <a href="https://www.sdcard.org/downloads/formatter_4/">SD Card Formatter</a> っていうやつで microSD をフォーマットした</li>
<li>このコピーに数十分かかるので、Raspberry Pi を注文して届くのを待つ人は、先にイメージのコピーを済ませておくとよさそう</li>
</ul>
</li>
<li>Raspberry Pi 本体にさっきの microSD を差して、とりあえず<a class="keyword" href="http://d.hatena.ne.jp/keyword/%C5%C5%B8%BB%A5%B1%A1%BC%A5%D6%A5%EB">電源ケーブル</a>と LAN ケーブルをつないで起動してみる

<ul>
<li>
<a href="https://itunes.apple.com/us/app/lanscan/id472226235?mt=12" title="Read reviews, compare customer ratings, see screenshots, and learn more about LanScan. Download LanScan for Mac OS X 10.7 or later and enjoy it on your Mac.">LanScan</a> っていう<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%C4%A1%BC%A5%EB">ツール</a>を使って Raspberry Pi の IP アドレスを調べる</li>
<li>調べた IP アドレスを指定して <a class="keyword" href="http://d.hatena.ne.jp/keyword/MacBook">MacBook</a> から <a class="keyword" href="http://d.hatena.ne.jp/keyword/ssh">ssh</a> 接続する</li>
<li>このあと無線接続を安定させようと試みるも、ちょくちょく接続が切れてしまう問題を解消できず、ひとまず有線接続でガマンすることにして先に進む</li>
</ul>
</li>
<li>カメラモジュールをつないで写真撮影を成功させる

<ul>
<li>カメラモジュールを物理的に接続して Raspberry Pi を再起動する</li>
<li>
<a href="https://www.raspberrypi.org/documentation/usage/camera/raspicam/raspistill.md" title="We've provided some basic examples to help you discover possible uses for your Raspberry Pi and to get started with software available in Raspbian.">raspistill</a> という、撮影コマンドをインストールする</li>
<li>試しに raspistill を実行して画像ファイルを保存して、手元の <a class="keyword" href="http://d.hatena.ne.jp/keyword/MacBook">MacBook</a> に持ってきて中身を確認してみる</li>
<li>けっこう高解像度の写真が撮れていてびっくり〜〜〜</li>
</ul>
</li>
<li>最低限の開発環境を整える

<ul>
<li>
<a class="keyword" href="http://d.hatena.ne.jp/keyword/bash">bash</a> の設定を整えたり</li>
<li>
<a class="keyword" href="http://d.hatena.ne.jp/keyword/Ruby">Ruby</a> が動くようになればなんとかなるだろ〜と思って rbenv をインストールして最新の <a class="keyword" href="http://d.hatena.ne.jp/keyword/Ruby">Ruby</a> をインストールする</li>
<li>
<a class="keyword" href="http://d.hatena.ne.jp/keyword/MacBook">MacBook</a> から <a class="keyword" href="http://d.hatena.ne.jp/keyword/ssh">ssh</a> 接続して作業することが多くなるので tmux をインストールする</li>
</ul>
</li>
</ul>


<h3>自宅監視システム、はじめの一歩</h3>

<ul>
<li>raspistill コマンドで写真を撮影する</li>
<li>生成された画像ファイルを <a class="keyword" href="http://d.hatena.ne.jp/keyword/Amazon%20s3">Amazon s3</a> にアップロードする</li>
</ul>


<p>というような処理をする <a class="keyword" href="http://d.hatena.ne.jp/keyword/Ruby">Ruby</a> <a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B9%A5%AF%A5%EA%A5%D7%A5%C8">スクリプト</a>を書いて cron でばんばん動かすようにした。s3 の bucket を見てみると…</p>

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2015/09/27/211508-20150927205719.png" alt="f:id:june29:20150927205719p:plain" title="f:id:june29:20150927205719p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>よしよし、勝手に写真がアップロードされてきているぞ〜。ここでは2分ごとに写真を撮ってアップロードするようにしてみた。</p>

<p>「はじめの一歩」としてはこんな感じかな〜。よくわからないまま「うまくできるといいな〜」と構えていたものの、いつもの <a class="keyword" href="http://d.hatena.ne.jp/keyword/Linux">Linux</a> や <a class="keyword" href="http://d.hatena.ne.jp/keyword/Ruby">Ruby</a> などの知識があれば動くものがつくれてしまって拍子抜けした。ハードウェアのことを気にしないでもいいくらいにモジュールが整っているということだ。また、ゆとってしまったな。</p>

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2015/09/27/211508-20150927210220.png" alt="f:id:june29:20150927210220p:plain" title="f:id:june29:20150927210220p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>簡単なビューワーもつくってみた。定点カメラということで、日の出の様子も感じられる。</p>

<h3>得られた知見</h3>

<ul>
<li>Raspberry Pi はふつうに <a class="keyword" href="http://d.hatena.ne.jp/keyword/Linux">Linux</a> を設定して使えたのですぐに馴染めた、ウェブ系<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%D7%A5%ED%A5%B0%A5%E9%A5%DE">プログラマ</a>にもやさしい感じがする</li>
<li>ソフトウェア面に比べて、やっぱりハードウェア面の知見が自分にはぜんぜんない、カメラや本体を部屋の中にどう固定したらいいのかわからなくて困る</li>
<li>外出中も家の様子を把握できるの、想像していた以上に安心を得られてよい

<ul>
<li>写っているものはもちろんのこと、部屋の蛍光灯の ON/OFF で奥さんの活動の様子も感じられたりする</li>
</ul>
</li>
</ul>


<h3>今後の展望</h3>

<ul>
<li>動画も撮りたい</li>
<li>
<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%E9%A5%A4%A5%D6%A5%AB%A5%E1%A5%E9">ライブカメラ</a>もつくってみたい</li>
<li>写真や動画を解析して動体検知して Slack に通知、とかやってみたい</li>
<li>温度や湿度も測るようにして、IRKit と組み合わせて室温自動調整システムをつくってみたい</li>
</ul>


<p>とりあえずハードウェアを固定したくて以下を注文した。</p>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B009P0X6SO/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/41fJRApMG4L._SL160_.jpg" class="hatena-asin-detail-image" alt="サンワサプライ カメラ用アーム 雲台取付 CR-LACAM2" title="サンワサプライ カメラ用アーム 雲台取付 CR-LACAM2"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B009P0X6SO/cameralady-22/">サンワサプライ カメラ用アーム 雲台取付 CR-LACAM2</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> <a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B5%A5%F3%A5%EF%A5%B5%A5%D7%A5%E9%A5%A4">サンワサプライ</a>
</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> Personal Computers</li>
<li><a href="http://d.hatena.ne.jp/asin/B009P0X6SO/cameralady-22" target="_blank">この商品を含むブログを見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p></p>
<div class="hatena-asin-detail">
<a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00VRB7H84/cameralady-22/"><img src="http://ecx.images-amazon.com/images/I/41qCG4EnJ9L._SL160_.jpg" class="hatena-asin-detail-image" alt="iPhone6 plus 対応！ iphone &amp; Smartphone Holder アイフォン スマートフォン　をしっかりホールド！タイムプラス撮影などに便利です。BEARBOOK …" title="iPhone6 plus 対応！ iphone &amp; Smartphone Holder アイフォン スマートフォン　をしっかりホールド！タイムプラス撮影などに便利です。BEARBOOK …"></a><div class="hatena-asin-detail-info">
<p class="hatena-asin-detail-title"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00VRB7H84/cameralady-22/">iPhone6 plus 対応！ iphone &amp; Smartphone Holder アイフォン スマートフォン　をしっかりホールド！タイムプラス撮影などに便利です。BEARBOOK …</a></p>
<ul>
<li>
<span class="hatena-asin-detail-label">出版社/メーカー:</span> BEARBOOK</li>
<li>
<span class="hatena-asin-detail-label">メディア:</span> エレクトロニクス</li>
<li><a href="http://d.hatena.ne.jp/asin/B00VRB7H84/cameralady-22" target="_blank">この商品を含むブログを見る</a></li>
</ul>
</div>
<div class="hatena-asin-detail-foot"></div>
</div>

<p>今はこんな感じで不恰好だからね、ハード的にもソフト的にも、楽しみながら手を加えながら運用していくぞい。</p>

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2015/09/27/211508-20150927200532.jpg" alt="f:id:june29:20150927200532j:plain" title="f:id:june29:20150927200532j:plain" class="hatena-fotolife" itemprop="image"></span></p>
