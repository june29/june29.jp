+++
title = "地獄のRuby札幌の「女に惚れさす逆引きレシピ集」"
date = "2010-12-17T00:29:46+09:00"
slug = "glamorous-rubysappororecipe"
draft = false

+++

<p><a href="http://www.flickr.com/photos/june29/3754062374/" title="Ruby逆引きレシピ by june29, on Flickr"><img src="http://farm4.static.flickr.com/3500/3754062374_52a16473df.jpg" alt="Ruby逆引きレシピ" /></a></p>
<table  border="0" cellpadding="5">
<tr>
<td valign="top"><a href="http://www.amazon.co.jp/%E9%80%86%E5%BC%95%E3%81%8D%E3%83%AC%E3%82%B7%E3%83%94-%E3%81%99%E3%81%90%E3%81%AB%E7%BE%8E%E5%91%B3%E3%81%97%E3%81%84%E3%82%B5%E3%83%B3%E3%83%97%E3%83%AB-%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF-PROGRAMMER%E2%80%99S-RECIPE/dp/4798119881%3FSubscriptionId%3D15SMZCTB9V8NGR2TW082%26tag%3Dcameralady-22%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D4798119881" target="_top"><img src="http://ecx.images-amazon.com/images/I/51d%2BTTZruOL._SL160_.jpg" border="0" alt="4798119881" /></a></td>
<td valign="top"><font size="-1"><a href="http://www.amazon.co.jp/%E9%80%86%E5%BC%95%E3%81%8D%E3%83%AC%E3%82%B7%E3%83%94-%E3%81%99%E3%81%90%E3%81%AB%E7%BE%8E%E5%91%B3%E3%81%97%E3%81%84%E3%82%B5%E3%83%B3%E3%83%97%E3%83%AB-%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF-PROGRAMMER%E2%80%99S-RECIPE/dp/4798119881%3FSubscriptionId%3D15SMZCTB9V8NGR2TW082%26tag%3Dcameralady-22%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D4798119881" target="_top">Ruby 逆引きレシピ すぐに美味しいサンプル&#038;テクニック 232 (PROGRAMMER’S RECIPE)</a><img src="http://www.assoc-amazon.jp/e/ir?t=cameralady-22&#038;l=ur2&#038;o=9" style="border: none;" alt="" /><br />島田 浩二 設樂 洋爾 村田 賢太 前田 智樹 谷口 文威 <br />翔泳社  2009-07-25</p>
<p></font><font size="-2">by <a href="http://www.goodpic.com/mt/aws/index.html" >G-Tools</a></font></td>
</tr>
</table>
<p>これは <a href="http://atnd.org/events/10901" title="Ruby逆引きレシピAdvent Calendar : ATND">Ruby逆引きレシピAdvent Calendar</a> の参加エントリです。12月17日を担当します。前日の担当は <a href="http://twitter.com/y_ogagaga" title="おが (y_ogagaga) on Twitter">@y_ogagaga</a> さんで <a href="http://ogagaga.blog19.fc2.com/blog-date-20101216.html" title="iCalendar形式のデータを読み書きしたい">iCalendar形式のデータを読み書きしたい</a>でした。</p>
<blockquote><p>
職場とか学校で、Rubyに詳しい頼りになる先輩がいるっていうのは、こんな感じなんじゃなかろーかと想像する。「こういうことしたいんですけど？」と聞いてみると「ああ、これでできるよ」と一瞬で返ってくるような。</p>
<p>レシピ先輩（仮称）はいろいろなライブラリを知ってる。だから第1章の1.1に書いてあるのはRubyのコードの書き方じゃあなくて、有無をいわさずrubygemsをインストールして使う、ということだ。レシピ先輩はIRCをばりばり使う。だから第6章 ネットワーク処理のはじめは、ウェブじゃなくってIRC BOTのつくりかただ。レシピ先輩はいろいろなコミュニティに参加している。だから最後の第24章で伝えるのはコミュニティに参加する方法だ。</p>
<p><a class="quote" href="http://d.hatena.ne.jp/kimuraw/20090724/p1" title="2つの逆引き本「Ruby逆引きレシピ」「Ruby逆引きハンドブック」 - きりかノート 2冊め">2つの逆引き本「Ruby逆引きレシピ」「Ruby逆引きハンドブック」 &#8211; きりかノート 2冊め</a>
</p></blockquote>
<p>レシピ先輩の魂のライムに酔いしれろー！！</p>
<p><img src="http://jigokuno.img.jugem.jp/20090613_1265732.gif" alt="俺より強い奴に会いに行く って言ってる先輩知ってるよ" /></p>
<h3>Web ページを取得して解析したい / Web サイトから情報を抽出したい</h3>
<p>今回は、惚れさすレシピ124「Web ページを取得して解析したい」と、惚れさすレシピ152「Web サイトから情報を抽出したい」を参考にして、お手軽な画像ダウンローダを作ってみます。正義の味方<a href="http://twitter.com/tenderlove" title="Aaron Patterson (tenderlove) on Twitter">たこ焼き仮面</a>が作ってくれた <a href="http://nokogiri.org/" title="Nokogiri">Nokogiri</a> を使えば、とっても簡単に Web から情報を抜き出せちゃいます。</p>
<h3>Web Scraping</h3>
<p>Web Scraping、つまり「Web ページからの情報抽出」の手順は、ざっと以下の通りです。これは、Web API などの正面玄関がない場合を想定しています。玄関がある場合は、お行儀よく玄関から入りましょう。その方が楽ですし、Web ページの中の人にも迷惑を掛けません。</p>
<ul>
<li>ターゲットを決める</li>
<li>所望の情報が記載されている Web ページを探す</li>
<li>対象の Web サイトのソースを見て、HTML 構造とにらめっこする</li>
<li>対象の Web サイトにアクセスして、所望の情報を抜き出すプログラムを書く</li>
<li>ページングやエラー処理等の処理を追加し、プログラムを仕上げる</li>
<li>プログラムを動かす</li>
</ul>
<h3>惚れさせ画像ダウンローダ</h3>
<p><img src="http://jigokuno.img.jugem.jp/20100218_1708335.gif" alt="(ッターン！)" /></p>
<p><a href="http://jigokuno.com/" title="地獄のミサワの「女に惚れさす名言集」">地獄のミサワの「女に惚れさす名言集」</a>のすべての惚れさせ画像をダウンロードするプログラムを書きました。</p>
<p><script src="https://gist.github.com/743581.js?file=jigokuno.rb"></script></p>
<p><script src="https://gist.github.com/743581.js?file=downloader.rb"></script></p>
<p>horesasu の each で meigen を新しいものから順番に渡してくれるので、それに対する処理をブロックで与えてやるとよいです。今回はダウンローダなので、ファイルとして保存する処理を書きました。</p>
<p>えっ、なんか今日のエントリはいつもと違うって？ふふふ… 今までタイピングしていた手は、利き腕ではない。</p>
<p><img src="http://jigokuno.img.jugem.jp/20090211_903175.gif" alt="今まで痴漢していた手は 利き腕ではない" /></p>
<h3>惚れさせを、いつも側に</h3>
<p>すべての惚れさせ名言が、あなたの手元に届きました。</p>
<p><img src="http://img.skitch.com/20101215-jfx4k6dj9j2iha8bdfibp47unr.png" alt="Meigen images in local directory" /></p>
<p><img src="http://img.skitch.com/20101216-j3w2qqc1fgyjcjw6cxfmst686t.png" alt="jigokuno in iPhone" /></p>
<p>ファイル名にタイトルとキャラクター名を含めてあるので、検索できて便利です。</p>
<p><img src="http://img.skitch.com/20101215-1kuw92xy2xn92d57n9ta3b2k4u.png" alt="jigokuno search" /></p>
<p>おおっと… コードとブログを書いているとすぐに時間が過ぎちゃうな。僕が今シャブやってるからっていうのもあるけどね。</p>
<p><img src="http://jigokuno.img.jugem.jp/20100128_1680362.gif" alt="君と居るとすぐに時間が過ぎちゃうな 僕が今シャブやってるからっていうのもあるけどね" /></p>
<h3>わかってんのかよ</h3>
<p>さて！「500枚近くの画像をダウンロードしたいんだけど、とても手作業じゃあ無理だなあ。どうすれば…」そんな日常のちょっと困った場面で、惚れさすレシピ集はとっても心強い1冊です。まるで、身近にいる頼りになる先輩みたいに、あなたを助けてくれることでしょう。試しに<a href="http://www.rubysappororecipe.com/toc.html" title="Ruby逆引きレシピ レシピ一覧">Ruby逆引きレシピ レシピ一覧</a>をご覧なさいな。お品書きの充実っぷりに驚くこと間違いなしです。</p>
<blockquote><p>
Ruby逆引きレシピに載っているレシピを利用して、何かちょっとしたプログラムを作ってみてAmazonのRuby逆引きレシピのページにレビューを投稿するというイベントです。</p>
<p><a class="quote" href="http://atnd.org/events/10901" title="Ruby逆引きレシピAdvent Calendar : ATND">Ruby逆引きレシピAdvent Calendar : ATND</a>
</p></blockquote>
<p>そうそう、プログラムを書いて、ブログを書いて、レビューを書くまでがこの企画でしたね。今からレビューを書いてきます！<a href="http://atnd.org/events/10901" title="Ruby逆引きレシピAdvent Calendar : ATND">Ruby逆引きレシピAdvent Calendar</a> の明日の担当は <a href="http://atnd.org/users/show/49937" title="mikeneckさんのマイページ : ATND">mikeneck</a> さんです！</p>
<p><img src="http://jigokuno.img.jugem.jp/20100119_1668191.gif" alt="バトンなんてなくたって 俺達は繋がってる！" /></p>
<h3>おまけ</h3>
<p>惚れさせレシピ225に、実はあたしも出演しています。お手元のレシピ本をどうぞご確認ください。</p>
<p><a href="http://www.flickr.com/photos/june29/3779451345/" title="Ruby逆引きレシピ by june29, on Flickr"><img src="http://farm4.static.flickr.com/3464/3779451345_2f7e9bc942.jpg" alt="Ruby逆引きレシピ" /></a></p>
<p>まずいな〜！睡眠時間を削ってこんなエントリを書いてるのバレたら、心配されちゃってまずいな〜！</p>
<p><img src="http://jigokuno.img.jugem.jp/20091027_1540250.gif" alt="まずいな〜！こんなに眠眠打破のんでるのバレたら 心配されちゃってまずいな〜！" /></p>
