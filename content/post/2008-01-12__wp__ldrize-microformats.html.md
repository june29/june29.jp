+++
title = "LDRizeとmicroformats"
date = "2008-01-12T03:28:05+09:00"
slug = "ldrize-microformats"
draft = false

+++

<p>先日，LDRizeとmicroformatsを巡るちょっとした議論があって，考えるキッカケをもらいました．microformatsのおさらいと，思考メモ．</p>
<h3>microformatsとは</h3>
<p>まずはWikipediaからの引用です．</p>
<blockquote><p>
マイクロフォーマットはHTML（またはXHTML）ウェブページにおける、意味を表現するための小さなマークアップである。マイクロフォーマットには用途ごとに様々なものがある。</p>
<p><a class="quote" href="http://ja.wikipedia.org/wiki/%E3%83%9E%E3%82%A4%E3%82%AF%E3%83%AD%E3%83%95%E3%82%A9%E3%83%BC%E3%83%9E%E3%83%83%E3%83%88" target="_blank">Quotation from <strong>マイクロフォーマット &#8211; Wikipedia</strong></a>
</p></blockquote>
<p>ボクのまわりでは「microformatsってよく分からない」という声がよく聞こえます．名前だけを聞くと，確かによく分かりませんね．</p>
<p>microformatsがいまいち広まらないのは，サイト作成者にとってのメリットが分かりにくいからではないかと思います．こういった状況を打破し，今よりもっと認知されるためには何が必要か，と考えてみたとき，OpenIDに対する次の言葉がmicroformatsにもそのまま当てはまるなぁと感じました．</p>
<blockquote><p>
「対応するメリットがない」のではなく、「対応していないことのデメリットが大きい」ような時代が来るのではないかということだ。</p>
<p><a class="quote" href="http://www.atmarkit.co.jp/news/analysis/200801/07/gorilla.html" target="_blank">Quotation from <strong>グーグルはキングかゴリラか − ＠IT</strong></a>
</p></blockquote>
<h3>AutoPagerizeのmicroformats</h3>
<p>ボクがなんとなく「microformatsってそういうことか！」と思ったのは，<a href="http://swdyh.infogami.com/autopagerize">AutoPagerize</a>についてアレコレ調べたときでした(<a href="http://d.hatena.ne.jp/swdyh/20070701/1183239979">AutoPagerizeはバージョン0.0.11からmicroformatsに対応しています</a>)．「こういうサイト構造のときは，こういう風にマークアップしようね」という小さな決まり事のこと，と解釈しています．</p>
<p>ご存知AutoPagerizeは，閲覧中のWebサイトの「次のページへのリンク」を見つけて裏側でアクセスし，1ページ目，2ページ目，3ページ目…と変化する「ページの内容部分」を切り出し，「現在のページの内容部分の最下部」の前に継ぎ足します．ここでわざとらしく括弧付きで書いた3つの要素が，すなわちAutoPagerizeが動作するために必要な情報ということになります．それぞれに対応するマークアップが「@rel=&#8221;next&#8221;」「class=&#8221;autopagerize_page_element&#8221;」「class=&#8221;autopagerize_insert_before&#8221;」です．</p>
<p>ページング処理は，ありとあらゆる種類のサイトで実装されています．それらの共通の構造をformatとして定義し，単一のスクリプトで同一の継ぎ足し処理が実現されます．</p>
<h3>microformatsの実例</h3>
<p><a href="http://microformats.org/wiki/Main_Page">Microformats Wiki</a>を覗くと，様々なmicroformatsを知ることができます．</p>
<p>例えば<a href="http://microformats.org/wiki/hatom">hAtom</a>は，ブログのマークアップに使われたりします．「エントリのタイトル」「エントリの本文」「エントリのパーマリンク」などの情報は，ほとんどのブログで共通の情報ですよね．これらに共通のマークアップが施されていれば，ブログ間の細かな差違を気にすることなくスクレイピングできるようになり，必要な情報を取得するのが容易になる，などのメリットが生まれます．</p>
<p>他には主にソーシャルブックマーク用の<a href="http://microformats.org/wiki/xfolk">xFolk</a>，レビュー用の<a href="http://microformats.org/wiki/hreview">hReview</a>などがあります．</p>
<h3>LDRizeとmicroformats</h3>
<p>ご存知<a href="http://white.s151.xrea.com/wiki/index.php?script%2FLDRize">LDRize</a>というユーザスクリプトを導入すると，対応サイトのすべてにおいて<a href="http://reader.livedoor.com/">livedoor Reader</a>ライクなキーバインド操作が可能になります．</p>
<p>LDRizeは，先に紹介したhAtomとxFolkに対応しています．otsuneさんがSITEINFOを書いたとのことです．</p>
<blockquote><p>
実はLDRizeのxFolk SITEINFO（設定ファイル）はオレが書いた。</p>
<p><a class="quote" href="http://www.otsune.com/diary/2007/11/08/1.html" target="_blank">Quotation from <strong>void GraphicWizardsLair( void ); // 「LDRizeのxFolk対応」と「カトゆー家断絶テストページやfooo.nameがxFolk化」が合わさるだけで、いろんなWebページがものすごく便利になるのもmicroformatsの大きな利点のひとつ</strong></a>
</p></blockquote>
<p>なので，otsuneさんのエントリで言及されているようにxFolkに対応しているTwitterなどのサイトでは，いきなりLDRizeが動きます．素晴らしいですね．</p>
<p>さて，ずいぶんと遠回りをしましたがようやく本題です．発端はMaicoさんの次の発言．</p>
<blockquote><p>
LDRizeのSITEINFOにもmicroformatを作れば、みんな幸せになれないかな？</p>
<p><a class="quote" href="http://twitter.com/mai_co_jp/statuses/578978092" target="_blank">Quotation from <strong>Twitter / Maico</strong></a>
</p></blockquote>
<p>「それhAtomやxFolkでできるよ！」ってことで，LDRizeの作者のsnj14さんが反応．</p>
<blockquote><p>
@mai_co_jp LDRizeはhAtomとxFolkっていうmicroformatsに対応してます</p>
<p><a class="quote" href="http://twitter.com/snj14/statuses/579839512" target="_blank">Quotation from <strong>Twitter / snj14</strong></a>
</p></blockquote>
<p>この話の行方が気になってモヤモヤしていたら，Maicoさんはそのとき同じ建物内にいることが判明し，さらに，すぐ近くにいたdarashiさんも駆けつけてくれることになったので，会って話をしてみることにしました．要求定義を聞いてみた結果，肝は以下の2点だと分かりました．</p>
<ul>
<li>内部向けのサイトなので，公にSITEINFOを書きたくない</li>
<li>「v」「o」で開くようなリンクはなく，「j」「k」のスクロール操作だけを利用したい</li>
</ul>
<p>ちょっと特殊なケースですね．スクロール操作を実現するだけなら似非xFolk対応(xFolkの仕様を部分的に満たすだけでLDRizeを動かすことはできる)すればいいだけですが，リンクがリストされているサイトでなければ，xFolkのマークアップは意味的には正しくありません．つまり「paragraph単位でスクロールして閲覧するようなサイト」用のmicroformatsがあれば嬉しい，ということですかね．この件を追いかける中で，Amazonの商品ページ(<a href="http://www.amazon.co.jp/exec/obidos/ASIN/4152088664/cameralady-22/ref=nosim/">例</a>)でもLDRizeが動くことを知りました．「j」「k」によるスクロール操作だけが利用できるパターンです．確かに便利です．</p>
<p>AutoPagerizeのmicroformatsは，完全にAutoPagerize用です．一方でLDRizeのカバーしているmicroformatsは，LDRizeのためのものではないので，LDRizeを動作させるためにマークアップすることが意味的に正しいとは限らないのですね．</p>
<p>じゃあ，今回のケースのようなサイトでLDRizeの「j」「k」スクロールだけを利用したいときにはどうすればいいでしょうか．オレオレフォーマットにはなりますが，SITEINFOに</p>
<pre>
domain:    'microformats',
paragraph: '//*[contains(concat(" ",@class," "), " ldrize-paragraph ")]'
</pre>
<p>のような記述を追加し，サイト側のマークアップで対応するってのは現時点ではアリかなと思っています．皆さん，どう思われますか．</p>
<h3>最後に</h3>
<p>ブログといえばRSSを吐くモノ，と定着したように，microformatsも「対応してあると便利！」から入って「対応するのがお作法だよね！」という雰囲気が強くなっていくと，もっともっとWebが便利になりそうですね！わくわく！</p>
