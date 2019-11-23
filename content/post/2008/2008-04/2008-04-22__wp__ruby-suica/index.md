+++
title = "Suicaの履歴で遊ぶ"
date = "2008-04-22T01:43:44+09:00"
slug = "ruby-suica"
draft = false

+++

<p>上京して働き始めてから3週間ほどが経ちました．思っていたほどの気持ちの変化もなく，これまで通りのノリで楽しく暮らしています．それでも，環境の変化はボクにたくさんのものを与えてくれますね．嬉しいことです．ようやく生活も落ち着いてきたので，少しずつブログの更新頻度も高めていきたいです．</p>
<p>会社に属するようになって改めて，「手続き的なものは苦手だなぁ」と感じます．そんな中でも，日々の交通費の申請がとても面倒だったので，PaSoRi を使って Suica の履歴を取得し，半自動化を試みました．</p>
<table  border="0" cellpadding="5">
<tr>
<td valign="top"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B0009YVAW4/cameralady-22/ref=nosim/" target="_top"><img src="http://ecx.images-amazon.com/images/I/312WXC455AL._SL160_.jpg" border="0" alt="SONY RC-S320 非接触ICカードリーダ/ライタ PaSoRi 「パソリ」" /></a></td>
<td valign="top"><font size="-1"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B0009YVAW4/cameralady-22/ref=nosim/" target="_top">SONY RC-S320 非接触ICカードリーダ/ライタ PaSoRi 「パソリ」</a></p>
<p>ソニー  <br />売り上げランキング : 148</p>
<p><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B0009YVAW4/cameralady-22/ref=nosim/" target="_top">Amazonで詳しく見る</a></font><font size="-2"> by <a href="http://www.goodpic.com/mt/aws/index.html" >G-Tools</a></font></td>
</tr>
</table>
<h3>Rails で社内用 Web アプリ！</h3>
<p>こんなアプリを作ってみました．</p>
<div class="thumbnail"><a href="http://skitch.com/june29/j61q/psreadr"><img src="http://img.skitch.com/20080421-jshqqhy4sare6kcdijus1f3ucc.preview.jpg" alt="PSReadr" /></a><br /><span style="font-family: Lucida Grande, Trebuchet, sans-serif, Helvetica, Arial; font-size: 10px; color: #808080">Uploaded with <a href="http://plasq.com/">plasq</a>&#8216;s <a href="http://skitch.com">Skitch</a>!</span></div>
<p>誰がいつどの駅からどの駅まで移動していくら掛かったのか， Suica の履歴から分かります．「この駅は誰々がよく利用している」だとか「この日はどこどこに行ったよねー」だとか，そんな会話が生まれるといいですね．</p>
<h3>Suica の履歴</h3>
<p>Leopard で Ruby から PaSoRi を通して Suica のデータを扱えるようにするため，以下のリンク先を手順を踏みました．</p>
<ul>
<li><a href="http://mig-ration.blogspot.com/2007/04/libpasori.html">mig-ration: libpasori の共有ライブラリ化</a></li>
</ul>
<p>Leopard 上の Xcode を使う場合は「有効なアーキテクチャ」の項目から「ppc」を除いてやるとビルドが上手くいくようです．</p>
<ul>
<li><a href="http://mig-ration.blogspot.com/2007/04/using-pasori-with-ruby.html">mig-ration: Ruby で PaSoRi 使ってみる</a></li>
<li><a href="http://mig-ration.blogspot.com/2007/04/ruby-suica.html">mig-ration: Ruby で Suica を覗いてみる</a></li>
</ul>
<p>駅のデータはこちらのものを利用させていただきました．Excel 形式のものを CSV に変換してプログラムに読ませましたが，重複行があったり，昔と今で駅の名前が変わっていて同じコードが振られているものがあったりするので，多少の整形が必要でした．</p>
<ul>
<li><a href="http://www.denno.net/SFCardFan/index.php">路線・駅コード一覧・登録</a></li>
</ul>
<p>ここまでの下準備が最も大変だったわけですが，ようやく Ruby から Suica のデータを読めたときはテンションが上がりました！でもでも，Suica には最新20件の利用履歴しか保存されておらず，日付のデータは取れても時刻までは取れないし，ちょっと残念です．もっと細かいデータまで扱えたら楽しいのになぁ．</p>
<h3>まとめ</h3>
<p>会社の手続きのような面倒なものも積極的に楽しくしていきたい！デバイスを扱うプログラミングは楽しい！</p>
<h3>追記</h3>
<p>ブックマークコメントにお返事します．</p>
<blockquote><p>
ところで買い物履歴も吸い出すんですか?</p>
<p><a class="quote" href="http://b.hatena.ne.jp/kyo_ju/20080503#bookmark-8357944" target="_blank">Quotation from <strong>はてなブックマーク &#8211; kyo_juのブックマーク / 2008年05月03日</strong></a>
</p></blockquote>
<p>Suica は，買い物履歴も含めて20件まで保持していて，PaSoRi から読み出すタイミングでは買い物履歴も取得します．今回作ったアプリでは，その後の処理で買い物履歴を除いて，電車利用の履歴だけを利用しています．</p>
