+++
title = "AutoPagerizeでmixi日記のコメント欄が逃げる件"
date = "2007-10-03T14:52:58+09:00"
slug = "autopagerize-mixi-diary"
draft = false

+++

<p>さっき，twitterのボクから見える範囲でも話題になっていたので，軽くまとめておく．</p>
<p>mixiのリニューアル後から，mixiの日記のページでAutoPagerizeが動くようになった．誰かがSITEINFOを追加してくれたってことだ．だけど！過去の日記が継ぎ足される場所(insertBefore)がコメント欄の上だったからさぁ大変！コメント欄が逃げちゃう．追いかけても追いかけても逃げていく月のように！あと，tumblrのトップページの「Log in」のリンクも逃げますよね！</p>
<p><a href="http://twitter.1x1.jp/search/?source=&#038;keyword=autopagerize+mixi&#038;lang=&#038;text=1" target="_blank">Twitter検索 : autopagerize mixi</a>で見るみんなの反応．</p>
<p>この問題に対する解決策は，大きく分けて以下の2通りある．</p>
<ul>
<li>「http://mixi.jp/view_diary.pl」で，AutoPagerizeを動かさないように設定する</li>
<li>SITEINFOを書き換えて，コメント欄が逃げないようにする</li>
</ul>
<h3>「http://mixi.jp/view_diary.pl」で，AutoPagerizeを動かさないように設定する</h3>
<p>この方法は，AutoPagerizeを利用するすべての人が覚えておくべき．<a href="http://twitter.com/otsune" target="_blank">@otsune</a>さんがご丁寧に<a href="http://otsune.tumblr.com/post/14017724" target="_blank">otsune tumblrまとめサイト画像保管庫Ｑ</a>にSSを載せてくれているので，参考にするといい．</p>
<h3>SITEINFOを書き換えて，コメント欄が逃げないようにする</h3>
<p>ボクはこっちの方法を選んだ．mixiのインタフェースだと，1日に複数の日記を書く人の古い日記が埋もれてしまうことが多々あって困っている．AutoPagerizeはこの問題をキレイに解決してくれるから，動かないようにしてしまうのは勿体ないと感じる．</p>
<pre>
url:          'http://mixi.jp/view_diary.pl*',
nextLink:     '//div[@id="diaryComment"]/div[@class="pageNavigation01"]/div[@class="pageList04 clearfix"]/ul/li[@class="pageLeft"]/a',
insertBefore: '//div[@class="diaryBottomAd"]',
pageElement:  '//div[@id="bodyMainAreaMain"]',
</pre>
<p>insertBeforeだけじゃなく，pageElementも書き換えた．過去の日記の本文と一緒に，コメント欄も取ってくるようにしている．</p>
<h3>こんなことを書いている間に</h3>
<p><a href="http://twitter.com/otsune" target="_blank">@otsune</a>さんが<a href="http://swdyh.infogami.com/autopagerize" target="_blank">SITEINFOのWiki</a>を更新したようですね！動かさないように設定した人は，その設定を解除して，SITEINFOのキャッシュをクリアして，どんな挙動になったか確認してみるといいよ！これなら好き嫌いなくみんなが使えるんじゃないかな！</p>
<h3>この件を通じて思ったこと</h3>
<p>SITEINFOの難しさを感じた．ここで「<a href="http://b.hatena.ne.jp/onk/20070921#bookmark-5940114" target="_blank">ドリコムをなめないでいただきたい</a>」でおなじみの<a href="http://twitter.com/onk" target="_blank">@onk</a>さんの言葉を引用します．</p>
<blockquote><p>
とりあえず，そもそも wiki を使って SITEINFO を集めるのが嫌いな理由は分かった。適用するかどうかの最終判断は自分のコントロール化にあるべきだと思っているからだ。</p>
<p><a href="http://twitter.com/onk/statuses/304986882" target="_blank"><strong>Twitter / Takafumi Onaka</strong></a>
</p></blockquote>
<p>この気持ちはすごく分かります．ボクはSITEINFOは素晴らしい仕組みだと思うし，もっとSITEINFOを活用した他のスクリプトが生まれてほしいと思っている身ですが，コントロールの問題はありますよね．ちょっとSITEINFOを編集しただけで，多くのユーザに影響が及んでしまうから，今回のように，小さい騒動になってしまうかもしれない．だから編集しようと思ったら慎重にならなきゃいけない．</p>
<p>今，「グローバルGreasemonkey」みたいなものを考えていて，これは，誰かがユーザスクリプトをインストールしたら，それがすべてのユーザに共有されるっていうものなんだけど，同じ種類の難しさがあるなあと思っている．アイディアの発端は，知り合いに「君の設定を教えておくれよ」と言われたときで，ボクが新しいスクリプトをインストールするたびに「これインストールしてね」っていうのは面倒だから．個人的には面白いアイディアだと思っているんだけど，やっぱり，解決しなきゃならない問題はあるね．</p>
<p>何かを使うに当たって「何が起きているのか分からない」状況は，気分の良いものではない．</p>
