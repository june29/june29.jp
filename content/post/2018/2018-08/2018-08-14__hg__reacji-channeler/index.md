+++
date = "2018-08-14T12:00:00+09:00"
title = "Slack の Reacji Channeler のすゝめ"
description = "Slack 社が Slack 用に提供している Reacji Channeler という仕組みがあります。あまり知られていないように感じたので紹介してみます。"
slug = "reacji-channeler"
og_image = "post/2018/08/14/reacji-channeler.png"
draft = false
+++

<a href="https://reacji-channeler.builtbyslack.com/" title="Reacji Channeler">Reacji Channeler</a> という、Slack 社が提供する Slack 用の便利機能があります。明示的にインストールしなきゃ利用できないので、Slack を使いつつも存在を知らないという人も多いように感じています。チャンネル数が少ない Slack Workspace ではそれほど意味をなさない、という性質もありますしね。一方、ぼくが所属するペパボのような数百人規模の組織で活用されている Slack においてはなかなかおもしろい働きをするので、周知のために書いてみようと思い立ちました。

<img src="/post/2018/08/14/reacji-channeler.png">

Slack 社、これをどれくらい推したいのかよくわからないのもおもしろいです。公式っぽい機能のわりにはぜんぜんアピールする気配がないような。あと名前がわかりにくい！リアクジ・チャンネラー。たぶん「Reaction + Emoji + Channel」あたりを混ぜて生成された言葉。日本語でいうと「リアクション絵文字チャンネル太郎」みたいなニュアンスだと思います。

### Reacji Channeler の機能

使い始めるには導入を済ませる必要があるので <a href="https://reacji-channeler.builtbyslack.com/" title="Reacji Channeler">Reacji Channeler</a> からエイヤッとお願いします。

導入が済んだら、続いて設定を施していきます。設定といっても作業は簡単で「任意の Emoji を、任意の Channel に紐付ける」それだけです。具体的には Slack の発言入力欄に以下のようにコマンドを打ち込むだけ。

```
/reacji-channeler :emoji: #channel
```

そうすると、Slack の発言に :emoji: のリアクションがついたときに #channel にシェアされるようになります。下のスクリーンショットは、ほとんどぼくが独りで活用している #29channel という Channel の様子です。ぼくは「大和田」という印鑑の Emoji がつけられた発言は #29channel に流れてくるように設定しています。

<img src="/post/2018/08/14/reacji-channeler-example.png">

誰かが @june29 関連の話題に「大和田」の Emoji Reaction をつけるだけでぼくのもとに情報が届くので便利です。また、ぼくの勤務先の地域には「大和田」と呼ばれるエリアがあり、それ関連の情報もちょいちょい流れてきておもしろいのでした。

<a href="https://twitter.com/kenchan" title="ウォッチ (@kenchan) | Twitter">@kenchan</a> も似たような設定をしていて、同じく印鑑の「高橋」の Emoji の Reaction がついた発言は @kenchan が個人でワイワイしている Channel に飛んでいきます。

### ぼくのまわりでの Reacji Channeler の活用事例

ペパボの Slack には「エンジニアみんなが集まる場所」があって、多くのエンジニアや、あるいはエンジニアの生態に興味がある他の職種の人も自由に出入りする Channel になっています。そこの Channel にシェアするための Emoji が設定してあるので「これはエンジニアみんなと共有したいな」となったものはバシバシと飛ばされています。

Reacji Channeler を導入していなかったとしても「これは共有したい」と思った発言って Copy link して然るべき Channel にペーストされていくじゃないですか。それをもっと気軽に、カジュアルにやれるようにしてくれる感じです。

他にも「社が提供するサービスごとの Emoji が、そのサービスの Channel に共有される」設定があったり、この Emoji をつけたら広報のみなさんの Channel に共有される、といった使われ方をしています。おもしろ枠でいうと :curry: がついたら #curry にシェアされる、というのもあります。

### より高度な使い方

Slack においては、発言するにはその Channel に Join する必要があります。しかし Reacji Channeler では飛ばし先の Channel に入らなくても利用できるため、一方的に情報を投げ付けることができます。この特徴を利用して、ぼくは @kenchan に一方的に投げ付けたい社内の情報をよく飛ばしています。ぼくの #29channel にも各方面からいろんな情報が投げ込まれています。

Emoji Reaction で発言を飛ばしたあと、Emoji Reaction を削除してもシェアされた発言は残ります。この挙動を利用すると完全犯罪が成立してしまってやばいです。たまに誰かが「大和田」の Emoji で #29channel に情報を飛ばしたあと、その「大和田」の Reaction を取り消ししているんですよね。誰が飛ばしてきたかわからなくなります。ぼくらはこの行為を俗に「投石」と呼んでいて、Reacji Channeler は投石器にもなり得るので注意が必要です。

### まとめ

ぼくは大好きだけれど、観測範囲ではぜんぜん言及されていないようなので <a href="https://reacji-channeler.builtbyslack.com/" title="Reacji Channeler">Reacji Channeler</a> の紹介文を書いてみました。身近なところでの活用事例もあわせて載せました。後半は犯罪を助長するような内容にもなってしまいましたが、みなさまにおかれましては用法・用量をよく守り健全な Reacji Channeler ライフを送っていただきたいと思います。

興味を持った人は、ぜひあなたの Slack Workspace に導入してみてください！おもしろ便利な使い方が発見されたら @june29 にも教えてください。

### 読者の声

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">うちのSlackも :god: とか自然と流れてくるようになってるチャンネルがあって、各位の神ムーブが可視化されています / “Slack の Reacji Channeler のすゝめ - <a href="https://twitter.com/hashtag/june29jp?src=hash&amp;ref_src=twsrc%5Etfw">#june29jp</a>” <a href="https://t.co/2u51seZCUo">https://t.co/2u51seZCUo</a></p>&mdash; . (@mactkg) <a href="https://twitter.com/mactkg/status/1029286849762578432?ref_src=twsrc%5Etfw">August 14, 2018</a></blockquote>

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">これめっちゃいいですよね。うちは :cool: で誰がCoolな発言や活動しているのか可視化されてて良い感じになっている。 / “Slack の Reacji Channeler のすゝめ - <a href="https://twitter.com/hashtag/june29jp?src=hash&amp;ref_src=twsrc%5Etfw">#june29jp</a>” <a href="https://t.co/Lu1kPvBqF0">https://t.co/Lu1kPvBqF0</a></p>&mdash; uenot (@braitom) <a href="https://twitter.com/braitom/status/1029394039181733888?ref_src=twsrc%5Etfw">August 14, 2018</a></blockquote>

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">うちは :kintai: 付けると <a href="https://twitter.com/hashtag/kintai?src=hash&amp;ref_src=twsrc%5Etfw">#kintai</a> channel に流れるようになってる。チームの channel に連絡して :kintai: 付ければ社内全体に伝わるので便利。 / “Slack の Reacji Chan…” <a href="https://t.co/wunPhgQzAn">https://t.co/wunPhgQzAn</a></p>&mdash; Takashi Masuda (@masutaka) <a href="https://twitter.com/masutaka/status/1029406616024625153?ref_src=twsrc%5Etfw">August 14, 2018</a></blockquote>

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr"><a href="https://twitter.com/hashtag/dev?src=hash&amp;ref_src=twsrc%5Etfw">#dev</a> に共有するための :dev: っていうよりは、 <a href="https://twitter.com/hashtag/dev?src=hash&amp;ref_src=twsrc%5Etfw">#dev</a> にgoodなengineeringを共有するための :good_engineering: っていう使い方のほうがコンテキスト濃くて好みな気がする</p>&mdash; 👶 (@negipo) <a href="https://twitter.com/negipo/status/1029267046947647488?ref_src=twsrc%5Etfw">August 14, 2018</a></blockquote>

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">reacji channeler、社内ブログに記事書いたらさっそくサポートの人たちがバグ報告を :ant: で集積し始めてて最高</p>&mdash; 👶 (@negipo) <a href="https://twitter.com/negipo/status/1029280275077816320?ref_src=twsrc%5Etfw">August 14, 2018</a></blockquote>
