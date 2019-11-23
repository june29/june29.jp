+++
title = "2016年のペパボのCEOは君だ！日々の発言ですべてが決まる"
date = "2016-12-20T23:30:00+09:00"
slug = "pepabo-ceo-2016"
draft = false
og_image = "post/2016/12/20/pepabo-ceo-2016-og-image.jpg"
original_url = "http://june29.hatenablog.jp/entry/pepabo-ceo-2016"

+++

<h3>pepabo Advent Calendar 2016</h3>


<p>これは <a href="http://qiita.com/advent-calendar/2016/pepabo" title="pepabo Advent Calendar 2016 - Qiita">pepabo Advent Calendar 2016</a> の12月20日の担当エントリです。今日はわたくし june29 が書きます。</p>

<p>きのうは <a href="https://twitter.com/takumakume" title="Takuma Kume (@takumakume) | Twitter">@takumakume</a> さんによる<a href="http://tech.pepabo.com/2016/12/19/hosting-tech-mtg-report-01/" title="技術を共有し高め合う！ホスティング事業部でTech MTGを開催しました - ペパボテックブログ">技術を共有し高め合う！ホスティング事業部でTech MTGを開催しました</a>でした。最近の<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%DB%A5%B9%A5%C6%A5%A3%A5%F3%A5%B0">ホスティング</a>事業部は勢いがあって素敵〜と思いつつ、本社事業部も負けていられないのでウオーという感じです。やっていきましょう。</p>

<p>さて今回は、2016年の社内コミュニケーションはどんなだったかな？というところに興味をもっていろいろと遊んでみたので、その一部をみなさんに紹介します。</p>

<h3>2016年のペパボの Slack の発言データを眺めてみた</h3>


<p>弊社ではすべてのスタッフが Slack を用いて日々のコミュニケーションを行っているので、これを見たらなにかわかるだろうということで、おもちゃとして選びました。</p>

<h4>対象データ</h4>




<ul>
  <li>対象期間: 2016年1月1日のはじまり〜2016年12月16日のおわり</li>
  <li>チャンネルの数: 1,048 (現役: 258, <a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%A2%A1%BC%A5%AB%A5%A4%A5%D6">アーカイブ</a>済: 790)</li>
  <li>発言体の数: 687 (人間: 615, ボット: 72)</li>
  <li>発言データ数: 4,048,420</li>
</ul>


<p>ちょっと思い立ってやってみました。わりと気軽なノリで着手して、ひとつの発言をひとつの <a class="keyword" href="http://d.hatena.ne.jp/keyword/JSON">JSON</a> ファイルとして保存していったら400万ファイルも保存されてしまって、解析しようにもファイルのままじゃどうにもならんとなって Advent Calendar の担当日の前日に大慌てで MongoDB のセットアップをはじめるドタバタっぷり… 盛大にコードを書き散らかしてしまったせいで公開できるようなコードがないのを先に謝っておきます！ごめんなさい！！！</p>

<p>なお、ぼくは一般ユーザの権限しかなくて、発言データのエクスポートはできないので、素朴に <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> を使ってデータを収集しました。ので、対象発言はすべて「パブリックチャンネルに投稿されたもの」になります。プライベートチャンネルやダイレクトメッセージは対象外です。</p>

<h4>眺め その1 : 発言に多く使われた絵文字ランキング</h4>




<ol>
  <li>🙇 [:bow:, 24605]</li>
  <li>🙏 [:pray:, 8746]</li>
  <li>[:hachan-dogeza:, 6844]</li>
  <li>😭 [:sob:, 6720]</li>
  <li>[:hachansuman:, 6138]</li>
  <li>🙆‍ [:ok_woman:, 3243]</li>
  <li>💦 [:sweat_<a class="keyword" href="http://d.hatena.ne.jp/keyword/drops">drops</a>:, 2586]</li>
  <li>👀 [:eyes:, 2552]</li>
  <li>🙋 [:raising_hand:, 1672]</li>
  <li>💪 [:muscle:, 1549]</li>
  <li>[:hai:, 1546]</li>
  <li>✨ [:sparkles:, 1483]</li>
  <li>[:space:, 1454]</li>
  <li>👌 [:ok_hand:, 1422]</li>
  <li>☺️ [:relaxed:, 1273]</li>
  <li>[:show-gun-gun-guuun:, 1150]</li>
  <li>🎉 [:tada:, 1129]</li>
  <li>😇 [:innocent:, 1094]</li>
  <li>📝 [:memo:, 1094]</li>
  <li>[:unko:, 1089]</li>
</ol>


<p>(絵文字を添えていないのは、弊社オリジナルのカスタム絵文字になります)</p>

<p>1位は<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%C0%A5%F3">ダン</a>トツで 🙇 :bow: でした！！！ みなさんちょっとあやまりすぎなのでは？日本企業かっ！これ、たとえば英語圏の企業だとそんなに 🙇 :bow: は使われないとか、そういう傾向はあるのでしょうか。弊社独自のカスタム絵文字は、読者のみなさんにはナン<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%CE%A5%B3%A5%C3%A5%C1">ノコッチ</a>ャでしょうが、3位のは「土下座系」で5位のは「謝罪系」なので、とにかくみんな毎日毎日ペコペコあやまりながらお仕事していることになります。ちょっとびっくりしました。</p>

<p>ざっくりまとめると、ぼくたちペパボのスタッフは、あやまったり祈ったりあやまったり泣いたりあやまったりオッケーを出したりしながら、日々の業務にあたっているということになります。</p>

<p>まあ、本当に洒落にならないミスをしたときは Slack に 🙇 :bow: とか打ち込んでいる場合じゃないはずなので、きっと謝罪というよりは「よろしくです」「おねがいします」ってときに 🙇 :bow: しているのだと思います。思いたいです。</p>

<p>あと20位は :unko: でした。これに対する考察はありません。</p>

<h4>眺め その2 : 個人ごとの多く使った絵文字ランキング</h4>


<p>ってのも出してみました。ぼくがよく使っている絵文字はこんな感じ！</p>

<ol>
  <li>🙏 [:pray:, 567]</li>
  <li>👀 [:eyes:, 237]</li>
  <li>📝 [:memo:, 157]</li>
  <li>😭 [:sob:, 141]</li>
  <li>😇 [:innocent:, 105]</li>
  <li>🙇 [:bow:, 88]</li>
  <li>💨 [:dash:, 86]</li>
  <li>🤔 [:thinking_face:, 79]</li>
  <li>👌 [:ok_hand:, 78]</li>
  <li>💪 [:muscle:, 70]</li>
  <li>😌 [:relieved:, 70]</li>
  <li>[:go:, 59]</li>
  <li>💡 [:bulb:, 52]</li>
  <li>😉 [:<a class="keyword" href="http://d.hatena.ne.jp/keyword/wink">wink</a>:, 48]</li>
  <li>☺️ [:relaxed:, 42]</li>
  <li>✨ [:sparkles:, 33]</li>
  <li>🎉 [:tada:, 32]</li>
  <li>🍣 [:sushi:, 31]</li>
  <li>😢 [:cry:, 28]</li>
  <li>🚧 [:construction:, 27]</li>
</ol>


<p>とにかく祈っていますね…。来年からエンジニアじゃなくて祈祷師という肩書きにしようかと思うくらい祈っています。そして88回も 🙇 :bow: していた… わしもあやまり文化を形成する一員やったんや… さっきは「あやまりすぎ！！！」とか言ってすみませんでした…🙇🙇🙇(という謝罪)</p>

<p>2位は 👀 :eyes: でした。誰かが気になる発言をしていたらすぐに 👀 :eyes: って書いている自覚はあります。同じように 📝 :memo: も使うなあ。思っていたほど 🍣 :sushi: は使っていなかった。</p>

<p>さて、ちょいと他の人の使用絵文字も紹介しましょうか。</p>

<p>弊社 EC 事業部長の <a href="https://twitter.com/glover" title="星 隼人 (@glover) | Twitter">@glover</a> さんのトップ4は 🍺
 [:beer:, 269], 🙇 [:bow:, 112], 👍 [:thumbsup:, 22], [:suzuri:, 15] でした。謝罪の2倍以上のビールが存在していますね。<a class="keyword" href="http://d.hatena.ne.jp/keyword/Twitter">Twitter</a> のプロフィールのところにいろいろと書いていますが、今すぐ「謝罪の倍くらいビールが好きです」と書き直してほしいと思いました。</p>

<h4>眺め その3 : リアクションに多く使われた絵文字ランキング</h4>


<p>Slack では発言に対して絵文字で反応することができます。それがリアクションってやつです。リアクションに多く使われているのはどんな絵文字なのか調べてみました。</p>

<ol>
  <li>[:hai:, 29208]</li>
  <li>🙋🏻 [:raising_hand:, 13816]</li>
  <li>[:otsu:, 7614]</li>
  <li>[:hachansuman:, 7167]</li>
  <li>🙇 [:bow:, 7041]</li>
  <li>🙏🏼 [:pray:, 4996]</li>
  <li>👀 [:eyes:, 4424]</li>
  <li>🙆 [:ok_woman:, 4249]</li>
  <li>[:sumi:, 4128]</li>
  <li>👍 [:+1:, 4084]</li>
  <li>🎉 [:tada:, 3937]</li>
  <li>[:hachan-dogeza:, 2627]</li>
  <li>[:kidoku:, 2188]</li>
  <li>😭 [:sob:, 1646]</li>
  <li>[:hachanhai:, 1580]</li>
  <li>㊗️ [:congratulations:, 1378]</li>
  <li>💪🏻 [:muscle:, 1335]</li>
  <li>😇 [:innocent:, 1303]</li>
  <li>🍣 [:sushi:, 1272]</li>
  <li>✨ [:sparkles:, 861]</li>
</ol>


<p>1位は :hai: ってやつです。最高に :hai: ってやつ。これは弊社のカスタム絵文字で「はい！」を画像にしてあるやつですね。2位の 🙋 :raising_hand: は片手をあげた女の人の絵文字なので、トップ2が「はーい！」って感じのやつです。たいへん聞き分けのよい、元気なお返事のできるスタッフがたくさんいるということです。アットホームな職場です(？)</p>

<p>9位の :sumi: もカスタム絵文字で「済」のハンコを画像にしてあるものです。たとえば総務や人事から「いついつまでに、これこれしてくださいね！」と全社アナウンスがあったときに、済ませた人から順に「済」のリアクション絵文字を置いていくような使われ方をしています。とってもかわいいコミュニケーションで、ぼくは大好きです。</p>

<p>あとは 👍 :+1: や 🎉 :tada: や ㊗️ :congratulations: や 🍣 :sushi: や ✨ :sparkles: はめでたい系ですかね。サービスの新機能がリリースされたときのアナウンスなんかには、よくこれらのめでたい絵文字がつけられている印象です。</p>

<h4>眺め その4 : 個人ごとのつけられ絵文字ランキング</h4>


<p>各自の発言にどんなリアクション絵文字がよくつけられているのかを見てみました。まずはぼくの分を見てみましょう。 …と思ったけれどあんまり見所のない結果だったので、ぼくのはスキップして他の人のを紹介しますね。</p>

<p>まずは <a href="https://twitter.com/udzura" title="Uchio KONDO (@udzura) | Twitter">@udzura</a> さんの獲得リアクションをご覧ください。トップ6が [:hai:, 158],  🙏 [:pray:, 60], [:shingi:, 47],  👀 [:eyes:, 45], 👍 [:+1:, 28], 😇 [:innocent:, 24] となっております。<a href="https://twitter.com/udzura" title="Uchio KONDO (@udzura) | Twitter">@udzura</a> さんはすごい人なので承認の 👍 :+1: をたくさん獲得していますが、「審議」の2文字を画像にした :shingi: や 😇 :innocent: をたくさん集めていることがわかります。<a href="https://twitter.com/udzura" title="Uchio KONDO (@udzura) | Twitter">@udzura</a> さんの人柄がよく出ていて、ほっこりとした気分になれます。</p>

<p>続いて <a href="https://twitter.com/pyama86" title="P山 (@pyama86) | Twitter">@pyama86</a> さんの結果。トップ6は [:hai:, 90], [:ikemen:, 49],  👍 [:+1:, 40],  🙏🏼 [:pray:, 30],  🎉 [:tada:, 29],  🙋 [:raising_hand:, 17] の通りです。2位に :ikemen: がきていて、なるほど、ただの自称イケメンではないということがわかりますね。ペパボのスタッフたちに認められているイケメンというわけです。ちなみに弊社 Slack に :ikemen: と書いて投稿すると <a href="https://twitter.com/pyama86" title="P山 (@pyama86) | Twitter">@pyama86</a> さんの顔写真が表示されます。</p>

<h4>眺め その5 : 個人の発言時間帯パンチカード</h4>


<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2016/12/20/pepabo-ceo-2016-20161221005838.png" alt="f:id:june29:20161221005838p:plain" title="f:id:june29:20161221005838p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>横に長い文字列で、うまく表現できなかったので画像にしちゃいました。縦に曜日、横に時間帯をとって、各枠での発言数をまとめてあります。これによって、平均的に何時台から働きはじめて何時台に退勤しているかの雰囲気がつかめます。</p>

<p>全スタッフのデータを出したので眺めてみると、インフラエンジニアさんが深夜や早朝に対応してくれている様子や、土日にカスタマーサポート業務を担当してくれているみなさんの様子などが見えてきて、あらためて「みなさんありがとう」という気持ちになれたので俺得でした。</p>

<h4>そして今年のペパボの CEO は…！</h4>


<p>今年、もっとも多く絵文字を活用して発言していた人を、勝手に Chief Emoji Officer と呼んで表彰することにしました。栄えあるペパボ CEO 決定戦  2016 のチャンピオンは………………………</p>

<p>いろいろと考えた結果、社内限定で公開することにしました！！！！！！！！！！！！！！！！！！！！！！！！！</p>

<p>気になるという人は<a href="https://pepabo.com/recruit/" title="採用情報 | GMOペパボ株式会社">このリンク</a>をたどっていくと最終的に閲覧することができるので、ぜひぜひ結果を見にきてほしいと思います。</p>

<p>そんなこんなで <a href="http://qiita.com/advent-calendar/2016/pepabo" title="pepabo Advent Calendar 2016 - Qiita">pepabo Advent Calendar 2016</a> の12月20日のエントリを june29 が担当しました。</p>

<p>明日、21日の担当はぼくの隣の席の <a href="https://twitter.com/kurotaky" title="Yuta Kurotaki (@kurotaky) | Twitter">@kurotaky</a> くんが担当です！彼はよく :ahiru: という絵文字をつけられているナイスガイです。</p>
