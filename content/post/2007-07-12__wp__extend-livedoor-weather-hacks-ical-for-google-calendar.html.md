+++
title = "Weather HacksのiCalをGoogleカレンダー用に拡張するスクリプト"
date = "2007-07-12T23:40:40+09:00"
slug = "extend-livedoor-weather-hacks-ical-for-google-calendar"
draft = false

+++

<p>livedoorが提供している<a href="http://weather.livedoor.com/weather_hacks/ical.html" target="_blank">iCal天気 &#8211; Weather Hacks</a>の情報を，Google Calendar用に拡張するスクリプトを作りました．june29.jpにて動かしています．発案から実装まで，開発仲間の<a href="http://d.hatena.ne.jp/Meguu/" target="_blank">kubyaddi</a>と一緒に作業しました．たくさん勉強させてもらって，とても感謝しています．どうもありがとう！</p>
<p>発案にいたったのは，<a href="http://www.rememberthemilk.com/" target="_blank">Remember The Milk</a>とGoogle Calendarの素晴らしい連携を見たからでした．Remember The Milkの公式ブログにて紹介されている<a href="http://blog.rememberthemilk.com/2006/11/add-your-tasks-to-google-calendar.html" target="_blank">Google Calendarにタスクリストを追加する方法</a>を試すと，リンク先のスクリーンショットに示されるように，日ごとにチェックボックスのアイコンが表示されるようになります．これをクリックすると，タスクリストが開かれてRemember The Milkの機能を利用できるというものです．</p>
<p>これをどうやって実現しているのか調べてみたところ，<a href="http://code.google.com/support/bin/answer.py?answer=55978" target="_blank">Google Calendarに特有のデータの記述法</a>があると分かりました．iCalのEVENTの中に以下の記述を追加すると，Google Calendarが解釈してくれます．詳細は<a href="http://code.google.com/support/bin/answer.py?answer=55978" target="_blank">こちら</a>を参照してください．</p>
<pre>
X-GOOGLE-CALENDAR-CONTENT-TITLE : タイトル (必須)
X-GOOGLE-CALENDAR-CONTENT-ICON : Google Calendar上に表示される16x16のアイコン (必須)
X-GOOGLE-CALENDAR-CONTENT-URL : アイコンがクリックされたときに表示するコンテンツのURL (オプション)
X-GOOGLE-CALENDAR-CONTENT-TYPE : コンテンツの種類(HTMLか画像)を指定する (オプション)
X-GOOGLE-CALENDAR-CONTENT-WIDTH : コンテンツの幅 (オプション)
X-GOOGLE-CALENDAR-CONTENT-HEIGHT : コンテンツの高さ (オプション)
</pre>
<p>拡張したiCalを自分のカレンダーに表示させてみた様子が下のスクリーンショットです．アイコンは，天気を色で表現したものにしてみました．「○○ときどき△△」「○○のち□□」のときは2色で表現しています．このアイコンをクリックすると，もう少し詳しい内容がiframeで表示され，ページ遷移なしで情報を得ることができます．</p>
<p><a href="http://www.flickr.com/photos/libelabo/787320463/" title="Photo Sharing"><img src="http://farm2.static.flickr.com/1040/787320463_10c89139b3.jpg" alt="weather_gcal2" /></a></p>
<p>ちなみに，<a href="http://weather.livedoor.com/weather_hacks/ical.html" target="_blank">livedoor天気情報が提供してくれている元のiCal</a>データを普通にGoogle Calendarに追加したときの見た目は下のスクリーンショットのような感じです．</p>
<p><a href="http://www.flickr.com/photos/libelabo/788243364/" title="Photo Sharing"><img src="http://farm2.static.flickr.com/1004/788243364_ba3e170fec.jpg" alt="weather_ical" /></a></p>
<p>ボクはFaviconとかアイコンが大好きなので，これからは今回作った方を使っていこうと思います．画像はテキストに比べて，小さいスペースでも情報量を多くできるから，工夫すればもっと楽しいことができそうです．</p>
<p>今回用いたGoogle Calendarの機能を使えば，割と簡単に「Flickrにアップロードした写真を撮影日ごとに取得して，Google Calendar上に表示させる」とかできちゃいます．日付で紐付けると見やすくなるデータはWeb上に山ほどあるので，お天気情報以外にも色々と試してみたいものですなあ！</p>
<h3>拡張版お天気情報iCalの使い方</h3>
<p>今回作ったスクリプトはjune29.jp上で動かしています！ もし興味を持ってくれた人がいたら，ぜひ使ってみてください．Google Calendarの「URLを指定してカレンダーを追加する」機能を使って，以下のURLをぶち込むだけです．</p>
<pre>
http://june29.jp/ical/livedoor_weather2gcal.cgi?area=都市コード
</pre>
<p>都市コードは<a href="http://weather.livedoor.com/weather_hacks/ical.html" target="_blank">本家 livedoor 天気情報</a>と同じにしてあります．例えばボクと同じ札幌在住の人だったら，</p>
<pre>
http://june29.jp/ical/livedoor_weather2gcal.cgi?area=4
</pre>
<p>となります．なお，様々な都合によりスクリプトの運用をやめる場合もあるでしょうが，これに関しては責任を持ちませんので，そのつもりでよろしくお願いします… とか書いておいた方がいいのかな．</p>
