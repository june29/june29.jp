+++
title = "チャットボットと暮らす人類の未来に自分は何を期待するのか、あるいは何を期待しないのか"
date = "2016-05-11T01:12:09+09:00"
slug = "human-life-with-many-chat-bots"
draft = false
og_image = "post/2016/05/11/human-life-with-many-chat-bots-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/human-life-with-many-chat-bots"

+++

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2016/05/11/human-life-with-many-chat-bots-20160511002338.png" alt="f:id:june29:20160511002338p:plain" title="f:id:june29:20160511002338p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>約1ヶ月前の4月1日に、特に説明もなくただリンクを並べたような <a href="http://june29.hatenablog.jp/entry/bot-year">Bot Year</a> という雑なエントリを書いた。他の多くのみなさんと同じように、ぼくも、2016年はチャットボットの年になるかもな〜と思いながら書いたエントリだった。そんで、実際にチャットボットの年になるかどうかは「<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%AD%A5%E9%A1%BC%A5%A2%A5%D7%A5%EA">キラーアプリ</a>が登場するかどうか」に賭かっているとも思っているので、どんな体験が考えられるだろうか〜ということで、あれから、LINE と <a class="keyword" href="http://d.hatena.ne.jp/keyword/Facebook">Facebook</a> Messenger のそれぞれのプラットフォームを試してみた。</p>

<ul>
<li><a href="https://developers.line.me/bot-api/overview">LINE Developers - BOT API - Overview</a></li>
<li><a href="https://messengerplatform.fb.com/">Messenger</a></li>
</ul>


<p>試してみて感じたことがあるので、現時点での自分の感覚を言葉にしてメモしておく。</p>

<h4>多くの人が慣れているであろうチャットの<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%D5%A5%A7%A5%A4%A5%B9">インターフェイス</a>について</h4>

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2016/05/11/human-life-with-many-chat-bots-20160511002358.png" alt="f:id:june29:20160511002358p:plain" title="f:id:june29:20160511002358p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>チャットの<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%D5%A5%A7%A5%A4%A5%B9">インターフェイス</a>で「買い物をする」というフローを試してみたけれど、これは別に自分が求めている体験ではないな…？という気持ちになった。今までウェブブラウザを開いてクリックしたりタップしたりしながら操作していたものを、チャットの<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%D5%A5%A7%A5%A4%A5%B9">インターフェイス</a>に着せ替えしたところで、特に目新しい体験はないどころか、やや煩雑になった気さえする。</p>

<p>チャットは大雑把に言えば <a class="keyword" href="http://d.hatena.ne.jp/keyword/CUI">CUI</a> なので、同じ操作を繰り返し実行したり、コンピュータから命令を送ったりするときには <a class="keyword" href="http://d.hatena.ne.jp/keyword/CUI">CUI</a> の強みが活きると思うけれど、最初に試してみた「買い物をする」体験、なかでも商品画像を見ながら「どれにしようかな〜」と選ぶような買い物の場合は殊更、<a class="keyword" href="http://d.hatena.ne.jp/keyword/CUI">CUI</a> よりも <a class="keyword" href="http://d.hatena.ne.jp/keyword/GUI">GUI</a> の方が向いているように思う。</p>

<p>ぼくはソフトウェア大好き<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%D7%A5%ED%A5%B0%A5%E9%A5%DE">プログラマ</a>だけれど、<a class="keyword" href="http://d.hatena.ne.jp/keyword/Amazon.co.jp">Amazon.co.jp</a> でお買い物をするときに <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> を叩いて購入しようとは思わない。<a class="keyword" href="http://d.hatena.ne.jp/keyword/MacBook">MacBook</a> のキーボードとマウス、あるいは <a class="keyword" href="http://d.hatena.ne.jp/keyword/iPhone">iPhone</a> の画面を触りながらお買い物する方を選ぶ。</p>

<h4>指示待ちボット</h4>

<p>自分が期待しないことの結論を雑にいうと「指示待ちボットは要らない」になる。急に、4月入社の新入社員たちにプレッシャーをかける先輩社員の台詞みたいになった。</p>

<p>こちらから LINE や <a class="keyword" href="http://d.hatena.ne.jp/keyword/Facebook">Facebook</a> Messenger の<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%D5%A5%A7%A5%A4%A5%B9">インターフェイス</a>でボットを相手にチャットの画面を開いて「はい、これこれこういうことをしてください」とお願いしたときに「ハイ、ワカリマシタ！ヤリマス！」と作業してくれるだけのボットなら、別に要らないと思う。それだったらターミナルから <a class="keyword" href="http://d.hatena.ne.jp/keyword/curl">curl</a> でなにかできた方がハンディでいい。強いていえば LINE と <a class="keyword" href="http://d.hatena.ne.jp/keyword/Facebook">Facebook</a> Messenger だと、各プラットフォームで認証済みの状態で処理をスタートできるよね、というメリットはある。でもそれもまぁ、<a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> トークンがあれば <a class="keyword" href="http://d.hatena.ne.jp/keyword/curl">curl</a> でもいいじゃん、くらいのレベルのものかな。</p>

<h4>指示待ちボットではないチャットボットとは</h4>

<p>ずばり「仕事とは、自分から見つけるものである」と言ってみよう。急に、4月入社の新入社員たちにプレッシャーをかける上司の台詞みたいになった。</p>

<p>なぜチャットボットが強みを持つのか。それは、人々がすでにチャット上で実に豊かな情報をやりとりしているからに他ならない。<a class="keyword" href="http://d.hatena.ne.jp/keyword/Google">Google</a> が「検索クエリ」を活用して各個人に合わせた体験を提供しようと尽力しているように、チャットのプラットフォームには、<a class="keyword" href="http://d.hatena.ne.jp/keyword/%B8%A1%BA%F7%A5%A8%A5%F3%A5%B8%A5%F3">検索エンジン</a>には提供しないような日々の濃密な情報が蓄積されている。そこにボットを介在させることで、提案型のサービスを提供し得るだろう。</p>

<p>たとえば「今度、久しぶりにごはんでも行こうよ」「いいね〜！じゃあ新宿あたりで」なんて会話があったときに、飲食店の候補を提示してくれるような。「いま、渋谷駅を出ました！向かっています〜」と発言したときに、乗り換え案内を利用しますか？とスマートにサジェストしてくれるような。「じゃあ早速、日程調整しましょう！」という流れを察知して、チャットの画面上に候補日時を提示してその場で調整さんと同等の機能を提供してくれるような。「<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B4%A1%BC%A5%EB%A5%C7%A5%F3%A5%DC%A5%F3%A5%D0%A1%BC">ゴールデンボンバー</a>の新曲、めっちゃいいよね」という投稿がトリガーとなって、<a class="keyword" href="http://d.hatena.ne.jp/keyword/YouTube">YouTube</a> にあるその曲の PV をサッと表示してくれるような。「今日もありがとう！楽しかった〜！写真送るね」といって送った写真を、自動で補正していい感じにしてくれる自動盛り盛りボットのような。あくまでも例だけれども。</p>

<p>そういうチャットボットの在り方に、ぼくは夢を見るわけです。</p>

<p>いま現在においても、チームで Slack 等のチャット<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%C4%A1%BC%A5%EB">ツール</a>をフル活用している人たちや、<a class="keyword" href="http://d.hatena.ne.jp/keyword/Twitter">Twitter</a> でタイムラインの発言に反応するボットを嗜んだことのある人たちには、特に斬新な内容でもないでしょう。「<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A4%CC%A4%EB%A4%DD">ぬるぽ</a>」「ガッ」とか「突然の死」とか「<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%AC%A5%EB%A5%D1%A5%F3">ガルパン</a>」「いいぞ」とか、そういうことです。</p>

<p>人がボットに向かって話しかけるんじゃあないんだよ。人々が会話しているのをボットが眺めていて、タイミングを見計らって気の利いた発言をしてくれる。こういうのでいいんだよ、こういうので。今もテキストエリアにこういう文章を打ち込んでいるわけだから、自動でピッタリな画像を提案してくれてもいいんですよ。<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A4%CF%A4%C6%A4%CA%A5%D6%A5%ED%A5%B0">はてなブログ</a>に文句があるわけではなかった、ごめんね…。</p>

<h4>想定を越えた体験が欲しい</h4>

<p>そんなふうにして、ボットに対して「おっ、気が利くじゃないか〜」なんて思いながらいっしょに暮らしていけたら最高。スイッチを押したら蛍光灯の明かりがつく、もう1回押したら蛍光灯の明かりが消える、そういう画一的な動きじゃなくて、人と人がチャットしているときに笑っちまうような体験が生じるように、チャットボットともその場を共有して暮らしてみたい。</p>

<p>まぁ、会社の Slack で全スタッフが参加しているチャンネルで、ぼくが管理しているボットが不謹慎な「ここで一句」を詠んでしまったときはさすがに青褪めたので、そういうのもちゃんと制御していけたらいいんかな…。</p>

<p>自分みたいな、実際に簡易なチャットボットを多頭飼いしていて、どういうロジックでどういう発言をするのかを把握している人間でさえも、ときに、チャットボットの不意打ち発言みたいなものを喰らって、ボットに人格を感じてしまうことがある。ソフトウェアのことを知らない人からすれば、チャットの<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%D5%A5%A7%A5%A4%A5%B9">インターフェイス</a>上でボットと人間の区別がつかないというのは、ぼくら以上に強く感じ得る感覚なのかもしれない。</p>

<h4>未来に向けて</h4>

<p>差し当たって頭が痛いのは「プライバシーの問題」だなあ。仮にぼくが奥さんと LINE で連絡を取り合っているとして、そこにおもしろボットを参加させるとなると、基本的にすべての会話がボットのプロバイダーに筒抜けになるだろう。これが、自前で動かしているボットだったらいいけれど、今後「<a class="keyword" href="http://d.hatena.ne.jp/keyword/Bot">Bot</a> Market」みたいなところから便利ボットを選んでは追加していくとなると、3rd Party 製のボットと付き合っていくことになる。そうなったときに、LINE の利用者が「このボットを会話に参加させるということは、ここでの会話のログがボットのプロバイダーにも送信されて、」ということを正しく理解して活用していくのは、とても難しいことだと思う。</p>

<p>これをクリアできないと、任意のチャットグループに任意のボットを参加させる、という機能がオープンされないことになるんじゃないかな。細かいことがわかっていなくて的外れなことを言っている恐れもあるので、<a class="keyword" href="http://d.hatena.ne.jp/keyword/%CD%AD%BC%B1%BC%D4">有識者</a>の方にツッコミをもらえたらうれしい。</p>

<h4>まとめ</h4>

<ul>
<li>チャットボットと仲良く暮らす人類の未来を想像してニコニコしている</li>
<li>チャットボットの本質はその<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A4%A5%F3%A5%BF%A1%BC%A5%D5%A5%A7%A5%A4%A5%B9">インターフェイス</a>ではなく、チャットの場に介在できることにある</li>
<li>プライバシーの問題はむつかしい</li>
<li>4月入社の新入社員のみなさん、がんばってください</li>
</ul>