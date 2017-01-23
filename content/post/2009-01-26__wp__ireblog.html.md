+++
title = "iPhoneから指1本でReblogを楽しむためのWebアプリ"
date = "2009-01-26T00:25:22+09:00"
slug = "ireblog"
draft = false

+++

<p>作りました．名を iReblog といいます．</p>
<h3>まえおき</h3>
<p>もうこれを言うのは何度目になるか分かりませんが，ボクは <a href="http://www.tumblr.com/" title="Tumblr">Tumblr</a> が大好きです．そして <a href="http://wiki.github.com/to/tombloo" title="Home - tombloo - GitHub">Tombloo</a> のおかげで Tumblr と楽しく接することができて，心に平穏がもたらされています．</p>
<p>ところが欲張りなボクは，お出かけ中のちょっとした空き時間にも，iPhone を使って Tumblr を楽しみたいと思うようになりました．iPhone の文字入力や写真撮影は得意ではないので，とにかく Reblog さえできればいい．次から次へと流れてくる七色のポスト(Text, Photo, Quote, Link, Chat, Audio, Video)を，一心不乱にタップしてやりたいと思ったのでした．</p>
<p>残念ながら <a href="http://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=290058741&#038;mt=8" title="">Tumblr 公式の iPhone アプリ</a>は，ボクの使い方に合うようなものではありませんでした．Text のポストなんかできなくてもいい… 気持ちよく Reblog したいだけなんです！</p>
<p>知る限り，最も理想に近い実装は <a href="http://ido.nu/kuma/" title="ku">ku</a> さんの <a href="http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=283998370&#038;mt=8">iview</a> です．写真に特化していて，Tumblr 以外のソースからも写真を選んでポストできるのが素晴らしいです．iview との棲み分けを考える意味もあって，iReblog は写真以外も Reblog できるようにしました．</p>
<h3>実装</h3>
<p>手軽な Web アプリケーションとして実装しました．iPhone の Safari からアクセスする他，PC のブラウザから使うこともできます．ホームアイコンにするとこんな感じです．</p>
<p><img src="http://img.skitch.com/20090125-jqycs79n14bjbt7qr15ct2rws7.jpg" alt="iReblog ホームアイコン" /></p>
<p>jQuery に溺れてひたすら自分に優しいコードを書いて作ったプロトタイプに，<a href="http://twitter.com/kei_s" title="Twitter / kei_s">kei_s</a> さんが手を入れてくれて助かりました．具体的には，Selectors による DOM の選択と，DOM の生成及び削除の処理を減らしたら，体感できるくらいに動作が速くなりました．jQuery を使っていると「書けるから書いてしまう」ってのが危ういなぁと思いました．勉強になります．多謝．</p>
<h3>楽しみ方</h3>
<p>UI のコンセプトということで，使ってもらえるようなものを以下の場所に設置しました．iPhone か iPod touch の Safari からアクセスしてみてほしいです．普通にアクセスすると新着順，URL に #random を付けてアクセスするとランダムページングの Endless Summer モードになります．呼び方は <a href="http://taizooo.tumblr.com/" title="The Whole World is peaceful.">taizooo</a> さんの <a href="http://taizooo.tumblr.com/post/69415607/endless-summer-on-dashboard-ver-0-0-3" title="The Whole World is peaceful. - endless summer on dashboard ver 0.0.3">The Whole World is peaceful. &#8211; endless summer on dashboard ver 0.0.3</a> のステキな命名を真似っこ．</p>
<ul>
<li><del datetime="2011-02-06T03:28:04+00:00">http://ireblog.libelabo.jp/</del> <a href="http://ireblog.heroku.com/" title="iReblog">http://ireblog.heroku.com</a></li>
<li><del datetime="2011-02-06T03:28:04+00:00">http://ireblog.libelabo.jp/#random</del> <a href="http://ireblog.heroku.com/#random" title="iReblog">http://ireblog.heroku.com/#random</a> (Endless Summer)</li>
</ul>
<p>(2011年2月6日に設置場所を変更しました。詳細はこちら : <a href="http://june29.jp/2011/02/06/i-remade-ireblog/" title="iReblogとの出会いをもう一度やり直した - 準二級.jp">iReblogとの出会いをもう一度やり直した &#8211; 準二級.jp</a>)</p>
<p>アクションはたった2つだけ．</p>
<ul>
<li>画面の左半分をタップすると「Reblog して次に進む」</li>
<li>画面の右半分をタップすると「Reblog しないで次に進む」</li>
</ul>
<p><object type="application/x-shockwave-flash" width="400" height="300" data="http://www.flickr.com/apps/video/stewart.swf?v=66545" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"><param name="flashvars" value="intl_lang=en-us&amp;photo_secret=f6c649b411&amp;photo_id=3224881525"></param><param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=66545"></param><param name="bgcolor" value="#000000"></param><param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=66545" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&amp;photo_secret=f6c649b411&amp;photo_id=3224881525" height="300" width="400"></embed></object></p>
<p>「Reblog or Not!」進んだら後戻りはできません．PC のブラウザではそれぞれ「u」「j」にキーバインドを充ててあります．が，Firefox と Safari でしか表示と動作の確認をしていません．</p>
<p>あと，先ほど七色のポストと書きましたが，どうせ iPhone Safari で Flash は動作しないので Audio と Video は Dashboard のスクレイピングの時点で無視しています．</p>
<p>一応，先回りして Dashboard を読み込んでおく作りにはなっていますが，通信の状況によってはバッファが空になっちゃって画面がまっさらになったりするかもしれません．そういうときは，ちょっと一呼吸おくか，それでもダメなら画面の右側を優しくタップしてみてください．通信速度が Reblog 速度に追いつかないときにどうしたらいいか，解決策が見つかっていません．</p>
<p><img src="http://img.skitch.com/20090125-k22yatkutmgjwp45ukc7qwunse.jpg" alt="iReblog" /></p>
<p><a href="http://www.flickr.com/photos/june29/3224881817/" title="iReblog by june29, on Flickr"><img src="http://farm4.static.flickr.com/3462/3224881817_314443c952.jpg" width="500" height="333" alt="iReblog" /></a></p>
<h3>匿名 Tumblelog</h3>
<p>もともと自分で使うことが目的だったので，自分用の iReblog は自分しか知らない場所に置いてあって，自分の Dashboard から自分の Tumblr へ Reblog しています．</p>
<p>上述の iReblog は，Tumblr に作成した <a href="http://ireblog.tumblr.com/" title="weReblog">http://ireblog.tumblr.com/</a> のアカウントを利用していて，この子の Dashboard の内容が流れてきて，Reblog するとこの子のポストになります．誰かに試しに iReblog に触れてもらうために作成した共有アカウントなわけですが，匿名 Tumblelog ってのはそれはそれで面白いってことにも気が付きました．</p>
<p>動作確認のために数人で適当に Reblog を繰り返していたら，<a href="http://ireblog.tumblr.com/" title="weReblog">http://ireblog.tumblr.com/</a> はよく分からないことになってきました．とても面白い．</p>
<p>この子は今，5000アカウントぐらいを follow していて(絶賛 follow 増強中)，自分のアカウントで潜る Dashboard とはまた違う世界を見せてくれます．そして投稿先が自分の Tumblelog じゃないと思うと，気まぐれにいつもは通り過ぎるようなものも Reblog してしまったりして，なんだか不思議な感覚です．自分以外の Dashboard，タイムラインは面白い．その人の世界を垣間見ることができる．新はてなブックマークも，他のユーザのブックマークページにいくと，そのユーザのお気に入りユーザのコメントなんかもあわせて表示されて面白い．同じことですね．</p>
<h3>まとめ</h3>
<p>Reblog 特化アプリケーション iReblog を作りました．手の平サイズで Reblog を楽しめるようになりました．Endless Summer モードがあれば何回アクセスしても新鮮な気持ちで楽しめます．自分以外の Dashboard を楽しむことも覚えました．とてもよかったです．</p>
