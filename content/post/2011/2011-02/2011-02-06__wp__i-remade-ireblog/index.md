+++
title = "iReblogとの出会いをもう一度やり直した"
date = "2011-02-06T12:27:02+09:00"
slug = "i-remade-ireblog"
draft = false

+++

<p>その昔、iReblog という Web アプリケーションを作りました。</p>
<p><a href="http://june29.jp/2009/01/26/ireblog/" title="iPhoneから指1本でReblogを楽しむためのWebアプリ - 準二級.jp">iPhoneから指1本でReblogを楽しむためのWebアプリ &#8211; 準二級.jp</a></p>
<p><object type="application/x-shockwave-flash" width="400" height="300" data="http://www.flickr.com/apps/video/stewart.swf?v=66545" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"><param name="flashvars" value="intl_lang=en-us&amp;photo_secret=f6c649b411&amp;photo_id=3224881525"></param><param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=66545"></param><param name="bgcolor" value="#000000"></param><param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=66545" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&amp;photo_secret=f6c649b411&amp;photo_id=3224881525" height="300" width="400"></embed></object></p>
<p>思い返してみると、これを作ったのは2年前で、サーバを移し替えたりなんだりしている間に動かなくなってしまっていました。ですが、ひとつ前のエントリ「<a href="http://june29.jp/2011/02/06/instagram-and-ireblog/" title="ビューと操作を極限まで気持ちよくしたInstagramに触れながら、いつか作ったiReblogを思い出した - 準二級.jp">ビューと操作を極限まで気持ちよくしたInstagramに触れながら、いつか作ったiReblogを思い出した</a>」で Instagram や Tumblr に想いを馳せ、これから自分が Web アプリケーションをデザインしていくに当たり、あらためて「iReblog は、いつでも触って確かめられる状態にしておかなくてはならない」と強く思ったので、出会いをもう一度やり直しました。</p>
<h3>iReblog のコンセプト</h3>
<p><a href="http://taizooo.tumblr.com/post/44041332" title="The Whole World is peaceful. - RPMが低いヤツは多くを語るべきではない。"><br />
  <img src="http://img.skitch.com/20110206-ef2b7p9fhmmjq1t4x4df794dw8.png" alt="RPMが低いヤツは多くを語るべきではない。" /><br />
</a></p>
<p>iReblog は、以下のコンセプトを体現する「ひとつのモデル」になります。コンセプトモデルだ、と明確に意識しながら作った作品です。</p>
<ul>
<li>隙間時間における RPM (Reblog per Minutes) の最大化</li>
</ul>
<p>このコンセプトを実現する要素として、次のふたつを持たせました。</p>
<ul>
<li>疑似恒常更新 (いつアクセスしても新着がある)</li>
<li>疑似無限 (どれだけアクセスしても終端がない)</li>
</ul>
<p>Tumblr に ireblog というアカウントを作成し、6,400人以上を follow してあります。このアカウントの Dashboard を情報源として活用することで、まるで「蛇口をひねればいつでも水が出てくる」ように、常になんらかの新着情報があり、かつ、どこまでいっても終わりが見えないような状況を作り出しています。</p>
<h3>iReblog の実装</h3>
<p>サーバサイドの Ruby と、クライアントサイドの JavaScript で構成されています。</p>
<p>2年前に作ったときは require &#8220;cgi&#8221; していたのだけれど… 今回、<a href="http://heroku.com/" title="Heroku | Ruby Cloud Platform as a Service">Heroku</a> に置こうと思って <a href="http://www.sinatrarb.com/" title="Sinatra">Sinatra</a> アプリとして書き直しました。</p>
<p>また、Tumblr の Dashboard へのアクセスや Reblog の処理は、<a href="https://gist.github.com/812737" title="tumblr-scraper.rb">自前のスクリプト</a>に担当させていたのですが、今になってソースを読み返してみると凄まじい泥作業… 当時の自分がこれを書き上げるモチベーションをどうやって保っていたか思い出せないレベルです。ここはまるっとごっそり gem の <a href="https://github.com/mwunsch/tumblr" title="mwunsch/tumblr - GitHub">tumblr-rb</a> に入れ換えました。一通りの API は揃っていて、よくできたライブラリだと思います。感謝。ドキュメントやサンプルコードが少なくて苦労しましたが、iReblog 用に自分が書いたコードを見てもらえれば、なんとなくの使い方は分かるでしょう。</p>
<p>当時は <a href="http://jquery.com/" title="jQuery: The Write Less, Do More, JavaScript Library">jQuery</a> の 1.3.1 を使っていたようなので、1.4.2 にアップデートしておきました。</p>
<p>iReblog の使い方も <a href="https://github.com/june29/ireblog/blob/master/README.md" title="README.md at master from june29's ireblog - GitHub">README</a> に書いておきました。というわけで、裏側を作り直して、Heroku にデプロイして、あらためて iReblog の紹介です。</p>
<blockquote><p>
「キーボードの j を押す」か「画面の右半分をクリックする」と、Reblog せず次に進みます<br />
「キーボードの u を押す」か「画面の左半分をクリックする」と、Reblog して次に進みます</p>
<p><a href="https://github.com/june29/ireblog/blob/master/README.md" title="README.md at master from june29's ireblog - GitHub">README.md at master from june29&#8217;s ireblog &#8211; GitHub</a>
</p></blockquote>
<p><strong>iReblog :</strong> <a href="http://ireblog.heroku.com/" title="iReblog">http://ireblog.heroku.com/</a><br />
<strong>Source  :</strong> <a href="https://github.com/june29/ireblog" title="june29/ireblog - GitHub">june29/ireblog &#8211; GitHub</a></p>
<p>iReblog 上で Reblog したエントリは <a href="http://ireblog.tumblr.com/" title="weReblog">weReblog</a> に出現するようになっています。</p>
<p>ソースコードを clone して、あなたの Tumblr のアカウント情報(メールアドレスとパスワード)を設定すれば、ご所望のアカウントで動かせるようになっています。Heroku にデプロイする場合は、コマンドラインで「heroku config:add EMAIL=XXXXXX」「heroku config:add PASSWORD=YYYYYY」してください。</p>
<h3>iReblog 後の世界</h3>
<p>そういえば。2年前に「iReblog を作りました！」というエントリを書いて、その後、どうなったかは書いていませんでしたね。なので、今、書きましょう。</p>
<blockquote><p>
己の Web サーフィンとネットウォッチに限界を感じ悩みに悩み抜いた結果<br />
彼がたどり着いた結果(さき)は<br />
感謝であった<br />
自分自身を育ててくれた Web への限りなく大きな恩<br />
自分なりに少しでも返そうと思い立ったのが</p>
<p>一日一万回 感謝のリブログ！！<br />
気を整え 拝み 祈り 構えて リブログ<br />
一連の動作を一回こなすのに当初は5〜6秒<br />
一万回のリブログを終えるまでに初日は18時間以上を費やした<br />
リブログを終えれば倒れる様に寝る<br />
起きてはまたリブログを繰り返す日々</p>
<p>2年が過ぎた頃 異変に気付く<br />
一万回のリブログを終えても 日が暮れていない<br />
齢27を越えて 完全に羽化する<br />
感謝のリブログ 1時間を切る！！<br />
かわりに 祈る時間が増えた</p>
<p>ブラウザを閉じた時 タンブリスタのリブログは<br />
光回線を置き去りにした
</p></blockquote>
<p>そんな具合に、ものすごい速さで Reblog できるようになったのはよかったのですが、あるところまでいくと思うんですよ。「そういや、人は何故、Reblog するのだろうか」って、ね。賢者モードですよ。</p>
<p>ふぅ…</p>
<h3>消費の加速と枯渇</h3>
<p><a href="http://twitter.com/ogijun/statuses/22703592771162112" title="去年、FoodSpottingとInstagramはものすごい勢いでハマってその後ものすごい勢いで飽きた。あんなにハマってたBrightKiteもあんま使わなくなった。はてなモノリスも使わなくなった系かも。Foursquareはいまでも使ってる。"><br />
  <img src="http://img.skitch.com/20110206-f41d9f98hqasq9ak34gh8uiasa.png" alt="Twitter / @ogijun" /><br />
</a></p>
<p>これが、とても示唆富みです。ボクは人の顕在的欲求と潜在的欲求と消費と加速と枯渇について考えている。そうして Instagram は今後どうなっていくのだろうと、考えている。この感覚はあれだ、若くして頭角を現わしたスポーツ選手が過剰とも思えるほどの注目を浴びているのを見たときに、ちょっぴり心配になってしまう感覚に似ている。どうか、すべての Web アプリケーションが、健全に成長できますように。興味や好奇にさらされて、不健康な成長の中で、消費されてボロボロになってしまいませんように。</p>
<p>この Tweet の数日後に ogijun さんと面と向かってお話できる機会があったのは、本当に幸運だったな。考えを整理できた。京浜東北線、どうもありがとう。</p>
<p>こんなことを考えていたから<a href="http://jp.techcrunch.com/archives/20101225flickr-instagram/" title="FlickrこそがInstagramのようなサービスを作るべきだったのではないか。そうならなかった理由を「なかのひと」が解説">FlickrこそがInstagramのようなサービスを作るべきだったのではないか</a>という TechCrunch の釣りタイトルには腹が立ったんだ。悲しかったんだ。記事の本文を読めば、ちゃんとしたことが書いてあって、別に怒らなきゃいけないようなことはなかったんだけど、タイトルに煽られてしまった。おちんこでたりもしたけれど、私はげんきです。</p>
<p>ボクは Flickr を愛しすぎているので、もしかしたら変なことを言っているかもしれないけれど。Flickr は、変にユーザの消費をかき立ててモチベーションを枯渇させるようなことはしていないよ。Web 上の情報の種類を「ストックとフロー」にざっくり大別するとして、2006年以降に日本で盛り上っている Web アプリケーションは、ほとんどが「フロー」を助長する類のもの。良い言い方をすれば「お手軽」「お気楽」で「楽しい」もの、悪い言い方をすれば「インスタント」で「モチベーションとデータの使い捨て」と言えると思う。そんな中で、Flickr には「それなりに整理された、地球の写真アーカイブ」つまり「ストック情報」としての高い価値があるので、ある部分を Instagram に押さえられてしまったからといって、価値が失われるわけじゃあない。別のものだ、共存できる。Flickr は、ユーザの欲求を枯渇させずに、上手に人々の日々をデザインしていると、ボクは考えている。</p>
<h3>まとめ</h3>
<p>作り直した iReblog について、あらためて紹介の文章を書きました。「消費力」を究極まで高めた先に「枯渇」があるのではないか、というお話をし、iReblog や Instagram や Flickr を通じて感じていることを書きました。人々と Web が大好きなので、人々と Web がゆきずりの関係でダメになるのではなく、健全なお付き合いを続けていけたらいいなぁ、と思っています。</p>
