+++
title = "TwitterのイベントをNotifo経由でプッシュする「Notwife」をリリースしました"
date = "2010-11-23T00:04:28+09:00"
slug = "notwife"
draft = false

+++

<p>「名前、どうしよっか」「んー、Twitter と Notifo だから、Notwifo でいいんじゃないの」「お、いいねー」ってお話をしていたはずなんだけれど、気が付いたら最後の &#8220;o&#8221; が &#8220;e&#8221; に変わって Notwife が名前になっていました。</p>
<p><a href="http://notwife.heroku.com/" title="Notwife is not your wife.">Notwife is not your wife.</a><br />
<img border="0" src="http://img.skitch.com/20101122-ka4is3nh3c643pg9j1qr3nd5nc.png" alt="Notwife is not your wife." /></p>
<p><a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> と <a href="http://twitter.com/june29" title="Jun OHWADA (june29) on Twitter">@june29</a> のチームで作ったアプリを紹介します。</p>
<h3>Notwife ってなあに</h3>
<p>アプリケーションの説明は <a href="http://notwife.heroku.com/" title="Notwife is not your wife.">Notwife</a> の Web サイトに書いてあります。</p>
<h3>なんで Notwife を作ろうと思ったの</h3>
<p>モチベーションはみっつくらいありました。</p>
<ul>
<li>Twitter の Site Streams に触れてみたい</li>
<li>Pushable Web への布石にしたい</li>
<li>むしゃくしゃしてやった</li>
</ul>
<h4>Twitter の Site Streams に触れてみたい</h4>
<p>2010年9月28日に投稿された <a href="http://groups.google.com/group/twitter-development-talk/browse_thread/thread/39f188e6f71d93b6" title="User Streams goes Production, Site Streams adds Home Timelines - Twitter Development Talk | Google Groups">User Streams goes Production, Site Streams adds Home Timelines &#8211; Twitter Development Talk | Google Groups</a> を読んで <a href="http://dev.twitter.com/pages/site_streams" title="Site Streams | dev.twitter.com">Site Streams</a> は面白そうだなぁと思いました。</p>
<p>Twitter のユーザは数え切れないほどたくさんいて、API に触れているのは、そのうちの100人に1人くらい。さらに、Streaming API に触れているのは、そのうちの100人に1人くらい。さらにさらに、Site Streams の API に触れている人となると、そのうちの100人に1人くらい。そんなふうにざっくりと仮定してみて、Site Streams は遊び甲斐がありそう、遊んでみよう、と思うに至りました。</p>
<p>いやあ、<a href="http://favstar.fm/" title="Most popular recent tweets">Favstar.fm</a> の「速さ」には恐れ入ったのですよ。クローリングとかスパイダリングとかスクレイピングとか API を叩くとか、データを取得する方法はお行儀の悪い方法から正式な方法まで色々とありますけれど、たくさんのユーザの行動データを Streaming API で取得できると、ここまでユーザ体験が変わるもんですか、ってね。</p>
<h4>Pushable Web への布石にしたい</h4>
<p><a href="http://june29.jp/2010/05/11/twitter-chirpuserstreams-websocket/" title="TwitterのChirpUserStreamsをWebSocketで垂れ流す - 準二級.jp">TwitterのChirpUserStreamsをWebSocketで垂れ流す</a>で書いたような個人用システムは半年前にはすでに動いていて、プルだけじゃなく「プッシュ」という選択を自由に活用できる状態で Twitter を楽しんできた。ときには、他の Twitter ユーザさんの iPhone にプッシュを送る「プッシュ代行業」を趣味で展開したりもしていて、喜んでくれていて、この状態はもっと多くのユーザが簡単に体験できるべきだ、との考えを強めていた。</p>
<p>たとえば「ふぁぼられた！」を瞬間に検知できるのと、その日の夜に「あ、ふぁぼられていたのか」と遅延とともに知らされるのとでは、休み時間の教室でボケをかましたときに、その場で笑いが起きるのと、その日の夜にメールで「あれ、面白かったよ」と知らされるのと、それくらいの違いがある。その場で笑いが起きれば、縦続けに次の言葉をつなげられるかもしれないところで、フィードバックが得られないとなると、コミュニケーションの質は下がり量も減ってしまう。</p>
<p>目の前にお話相手がいれば、自然と笑い声が耳に届くように、本来、ボクらの生活には「プッシュ」が溢れている。ところが、舞台を Web に移すと、途端に「プル」だらけの世界になって、なんだかそれが当たり前だと言わんばかりの空気さえある。違う違う、情報の種類に応じて、コミュニケーションの種類に合わせて、プッシュとプルは上手に共存するべきものです。</p>
<p>Twitter のようにリアルタイム性の高いデータを流通させてくれるサービスや、<a href="http://www.webhooks.org/" title="WebHooks">WebHooks</a>、<a href="http://code.google.com/p/pubsubhubbub/" title="pubsubhubbub - Project Hosting on Google Code">pubsubhubbub</a> などの概念、プロトコル、実装のラインナップが増えてきて、Web は次第にプッシュフレンドリーになってきたと言えます。さらに、iPhone 等のスマートフォンなんかがあれば、これらをいつでもどこでも受信できる。これらが人々の生活に自然に溶け込む世界を思い描いている。</p>
<p><a href="http://notifo.com/user" title="Recent Notifications - Notifo">Notifo</a> は、よくできているので、もっと多くの人が活用を始めたらいいなって思っています。今回、ボクらが作成した Notwife の体験を通じて、誰かひとりでも「ああ、プッシュってこういうことか」「じゃあ、あの情報もプッシュで受け取れた方がいい！」「Notifo を使えば簡単に iPhone にプッシュできるのか！」なんて思ってくれたら、プロジェクトとしての Notwife は成功ってことです。</p>
<p>Notwife が、Pushable Web への布石になりますように。</p>
<h4>むしゃくしゃしてやった</h4>
<p>Web アプリケーション開発ならなんでもよかった。今でも反省していない。とても楽しかった。やっぱり自分は Web が好きなんだな。</p>
<p>開発の動機をざっくりまとめると「Rails」と「Twitter」と「Notifo」で遊びたくて、Notwife はちょうどいい遊び相手になってくれました、ということです。</p>
<h3>まとめ</h3>
<p>Twitter のイベントを Notifo 経由でプッシュする <a href="http://notwife.heroku.com/" title="Notwife is not your wife.">Notwife</a> をリリースしました。このエントリには、開発の裏側にあるコンセプトを書きました。</p>
<p>企画、設計、実装、運用。まるっとすべての作業を <a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> と <a href="http://twitter.com/june29" title="Jun OHWADA (june29) on Twitter">@june29</a> の2人で分担してこなしています。フロントエンドはボクが作り、バックエンドは <a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> さんがしっかり作ってくれました。実装の詳細は、<a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> さんと整理した上で、エントリを改めて書きます。準備中です。</p>
<p><ins datetime="2010-12-31T04:08:17+00:00"><br />
あとで書いた。<a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> さんの<a href="http://d.hatena.ne.jp/kei-s/20101208/1291738179" title="Notwife というサービスを始めました - 札幌市西区">Notwife というサービスを始めました &#8211; 札幌市西区</a>や、<a href="http://notwife.heroku.com/about" title="About - Notwife">Notwife の About ページ</a>をご覧ください。<br />
</ins></p>
<p>思い付いたアイディアを「Twitter のさ、Site Streams でさ、新着イベントをさ、Notifo でさ、iPhone にさ…」ぐらいのぼんやりした感じで話しただけで、このエントリに書いたようなコンセプトの深いところまで読み取って、すぐに作業を始めてくれた <a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> さんには、今回も感謝しています。これまで過ごしてきた時間の密度に支えらえて、ブレなくプロジェクトを進行できたと思います。</p>
<p>裏側のお話ばかりになりましたが、Notwife をどうぞよろしくお願いします。よかったら使ってみてください！プッシュ生活をあなたにも！</p>
