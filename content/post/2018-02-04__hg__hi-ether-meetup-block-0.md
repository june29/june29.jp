+++
date = "2018-02-04T14:00:00+09:00"
title = "「Hi-Ether Meetup - Block #0」に参加してきました"
description = "Ethereum 関連の開発者コミュニティである Hi-Ether の Meetup に参加してきました。とっってもおもしろかったので、簡単なレポートを書きました。"
slug = "hi-ether-meetup-block-0"
og_image = "post/2018/02/04/hi-ether-meetup-block-0.jpg"
draft = false
+++

2018年2月2日(金)に渋谷で開催された「Hi-Ether Meetup - Block #0」に参加してきました。昨年12月に書いた <a href="https://june29.jp/2017/12/22/ethereum-for-web-application-developers/">Web アプリケーション開発者のための Ethereum 入門</a> という記事でも触れた <a href="https://www.hi-ether.org/">Hi-Ether</a> という Ethereum に興味のあるエンジニアのコミュニティの、記念すべき初めてのオフラインイベントになります。

<img src="/post/2018/02/04/hi-ether-meetup-block-0.jpg">

### Hi-Ether について by @amachino さん

まずは Hi-Ether の立ち上げ人である <a href="https://twitter.com/amachino">@amachino</a> さんから、コミュニティの紹介がありました。ぼくはもともとコンセプトに共感したから参加させてもらっていたわけですが、今回こうして @amachino さんの生トークとして「こういうコミュニティにしたい！」というのを聞けて、胸が熱くなりました。

<script async class="speakerdeck-embed" data-id="694be350dfb645bea5346132be7d612a" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>

現に、Hi-Ether に参加してから Ethereum についてあれこれ調べたり学んだり触ったりするのがますます楽しくなったんですよね。気軽に質問したり相談したり議論できる人たちがいるって、本当にありがたいです。コミュニティの「こうありたい」あるいは「こうはありたくない」をしっかり理解した上で、いい関わり方をしていきたいな〜と思いました。やっていくぞ！

### DAICO を実装してみた by @syrohei さん

続いては <a href="https://dri.network/">DRI</a> のファウンダである <a href="https://twitter.com/syrohei">@syrohei</a> さんのトークでした。

<a href="https://ethresear.ch/t/explanation-of-daicos/465">Explanation of DAICOs - Better ICOs - Ethereum Research</a>

既存の ICO の問題点を克服し得る「DAICO」という概念の登場を受け、独自の解釈を加えつつ検証用にさっそく実装してみた！というお話でした。1月17日には <a href="https://blog.dri.network/the-first-implementation-of-daico-ja-8c91918f167">DAICOの最初の実装を公開しました – DRI Blog</a> という記事も公開されていたので、目にしていた人も多かったことでしょう。

<script async class="speakerdeck-embed" data-id="8058c4cff8714337b8a583664757eb1b" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>

### Ethereum で「今」サービスを作る by @sot528 さん

3つめは、2017年9月に ICO を行い日本円にして約4億円を調達して大きな話題にもなった <a href="https://alismedia.jp/">ALIS</a> の CTO の <a href="https://twitter.com/sot528">@sot528</a> さんのトークです。冒頭で「アウトプットはあまり得意ではなくて…」と言っていたので「なにをおっしゃいますやら！」と思いながら聞いていました。

ぼくは個人的に ALIS を応援しているので、ALIS の開発の現場の「実際のところ」をたっぷり聞けてなんとも俺得な内容でした。

Ethereum に興味を持って学びはじめて、チュートリアルをこなしてサンプルの独自トークンをつくってみるまではいいものの、いざ一般利用者向けの ÐApp を開発してみよう！となると、途端に「あれ、こういうときはどうするんだ…？」「これ実用に耐えなくない…？」と壁にブチ当たることになるかと思います。ぼくはそうなりました。ぼくと同じような立場の人ならきっと「他のみなさんはどうしているんだろ…？」と疑問を持つはずで、その疑問に対するアンサーがふんだんに盛り込まれているトークでした。ありがたや！

<script async class="speakerdeck-embed" data-id="927110e2d5924bad98babc5766bd9900" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

### スマートコントラクトの定時実行を調べてみた by @blueplanet さん

LT 枠のひとつめ！

<a href="https://qiita.com/blueplanet/items/bb9effd226106dd39344">スマートコントラクトの定時実行を調べてみた - Qiita</a>

いわゆる cron 的な機構が備わっていない Ethereum 上のスマートコントラクトで「定時実行、どうすんの？」というお話でした。トーク中には具体的なユースケースには触れられていなかったと思いますが、実用的な ÐApp をつくろうと思ったら必要になる場面は出てきそうですね〜。

### Dapp 開発をしてみる by @ngo275 さん

LT 枠のふたつめ！AnyPay の <a href="https://twitter.com/NGO275">@NGO275</a> さんです。

(トークタイトルはイベントのタイムテーブルにあったものをコピーしてきました)

スマートコントラクトで「イベントの参加者管理アプリケーション」をつくってみたよ、というこれまた実践的なお話でした。「参加費をたくさん払うと優先的に参加できる」というギミックがおもしろかったです。抽選で外れてしまった人には自動で参加費が返金される、というのはまさにスマートコントラクトのいいところですね〜。飲食店のドタキャン問題が騒がれる昨今でもありますから、スマートコントラクで世の中をよくしたい！というテンションになれて最高でした。

<script async class="speakerdeck-embed" data-id="14996b9a85b04de39b500e02c6c1a899" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

ソースコードも <a href="https://github.com/ngo275/Meethereum">ngo275/Meethereum: Meetup on Ethereum</a> に公開されています。ミーサリアム！あとでゆっくり読むぞ〜。

### トークン運用の三要素(発行・移転・消却) by Shu Kobuchi さん

LT 枠のみっつめ！

<a href="http://bccc.global/ja/">ブロックチェーン推進協会</a>の会員企業である<a href="https://www.cubesystem.co.jp/">株式会社キューブシステム</a>の Shu Kobuchi さんのお話でした。Vitalik さんとのツーショット写真、めちゃインパクトがありますね！やばい！

今回は3要素の中でも「消却 (Burn)」に焦点をあてた内容で、ぼくは Burn についてそこまで具体的に考えたことがなかったので、終始なるほどな〜と思いながら聞いていました。

<script async class="speakerdeck-embed" data-id="2041ef507bd646a397dee1bf3691882a" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

### 個人的メモ

以下は読者向けではない、ぼく個人としてのメモです。

- <a href="https://twitter.com/amachino">@amachino</a> さんに「Hi-Ether をつくってくれてありがとうございます」って言えた！
- <a href="https://www.amazon.co.jp/dp/B0794WJYGW/">ブロックチェーンアプリケーション開発の教科書</a>の著者のひとりである篠原航さんに「書籍、買いました！読みます！」とご挨拶できた
- いっしょに受付を担当させてもらったのが<a href="http://metaps.com/ja/">メタップス</a>の人たちで「お金2.0」のことなど話せてとても楽しかった
- <a href="https://twitter.com/gabu">@gabu</a> さんとはおそらく初めてオフラインで会い、いろいろとお話できた
- <a href="https://twitter.com/mituoh">@mituoh</a> くんと数年ぶりに再会していろいろと聞けてよかった
- Meetup 後に8人くらいで延長戦的にお話して、お互いにあらためて自己紹介して、もともとどういう界隈にいた人が Ethereum 方面に流れてきているのかなんとなくわかってよかった
- 最初は「第1回」というナンバリングでしたが、準備中に「Block #1 みたいにするとオシャレかも？」と提案したところ @amachino さんが「Meetup #0」としてくれました。ジェネシス！

### まとめ

初の Meetup は、とても盛り上がって最高でしたね！イベント開催時点で Hi-Ether の参加者は195人ほどで、そのうち70〜80名が渋谷に集まっていました。想像していた以上に「Ethereum そのもの」「スマートコントラクタ開発」「ÐApp 開発」に興味を持っている人は関東に集中しているようです。みなさんそれぞれ、具体的に話したいことが多くて、懇親会では活発に質問・相談・雑談・議論しあっているように見えました。

@syrohei さんの DAICO のお話を聞いているときに、まるでこの場で法案について議論しているようだなぁ、とぼくはしみじみ思ったんですね。どういう ICO が健全か、そのためにはどういった規律があればよいか… そしてその状態を実現するために技術でどうアプローチするかを、真剣に話し合う空間がそこにはあり、不思議な興奮を覚えました。Bancor Protocol もそうですけれど、社会に存在する問題を技術的アプローチで解決するのって、めちゃくちゃかっこいいですね！

ぼくは「コミュニティは、価値観とともにある」と思います。ただ人間が集まるだけでは不十分で、共通の価値観によって形成されるのがコミュニティであると捉えています。今回、Hi-Ether には「Decentralized というコンセプトを信じる」という価値観があると感じました。これはもちろん Ethereum の思想からきているものです。ここで、<a href="https://www.facebook.com/taizoson/posts/10155372510529492">2018年1月6日に孫泰蔵さんが Facebook に投稿していた内容</a>がおもしろかったので、引用して紹介しますね。Vitalik さんが孫さんにした最初の質問が

> 「あなたは分散型アプリケーションが好きですか？『decentralized（非中央集権）』というコンセプトを信じていますか？」

だったとのことです。もしこのコンセプトを信じられないのだとしたら Ethereum のコミュニティに属する意味がそもそもなくなってしまうのでしょう。ぼく個人にとっても、今年2018年は「あらゆることを、非中央集権的な発想で捉え直してみる」というおもしろい1年になりそうです。

Hi-Ether のみなさんにはなにかとお世話になると思いますので、どうぞよろしくお願いいたします！

俺が、俺たちが DAO だ！
