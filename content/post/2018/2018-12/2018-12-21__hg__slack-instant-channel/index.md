+++
date = "2018-12-21T9:00:00+09:00"
title = "一時的なチャンネルを作っては捨てて Slack をもっと活用する"
description = "社で取り入れている工夫をツイートしてみたら反響があったので、簡単にまとめておきます。"
slug = "slack-instant-channel"
draft = false
+++

ぼくの勤務先であるペパボの Slack での「これはうまいやり方だな」という活用方法をツイートしたら反響があったので、ここに簡単にまとめておきます。

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">社における「全員が済まさなきゃいけない」系のやつ、それ用の Slack チャンネルに人間たちをガッと放り込んで「完了した人から抜けてよい」という方式で進めるの、けっこう効果的でよさそうに見えている。そのチャンネルで呼びかける分には、すでに済ませている人のアテンションを奪わないのがよい。</p>&mdash; { 大和田: 純 } (@june29) <a href="https://twitter.com/june29/status/1075641033499635712?ref_src=twsrc%5Etfw">December 20, 2018</a></blockquote>

人によっては「チャンネルというのは、気軽に増やしたり減らしたりするものではない」と思っているかもしれませんが、チャンネルを増やしたらオフィスが狭くなるというわけでもありませんし、作っては捨てて、それで快適にやるべきことを進行できるならいいじゃん、というお話です。使い捨ての発想。

たまたまうちでは Slack を使っているので Slack を対象として書きますが、チャットアプリケーションであればだいたい同じお話が適用できると思います。

### 組織における、全員が済まさなきゃいけないやつ

たとえば、具体的にはこういうチャンネル名になります。

- #Slackの2要素認証設定のお願い
- #セキュリティ研修を受講してください

うちのようにせいぜい数百名規模 (2018 年 12 月現在) の組織においても「全員に 5 分ずつ使ってもらって、これを完遂させる」って、なかなか大変です。今回紹介した工夫がなかった場合、

- 全体チャンネルのような場所で「いつまでにこれを済ませてください」と周知する
- 期日まで、担当者が定期的に完了状態をチェックして、未完の人のリストを出す
- 未完の人のリストをもとにそれらの人々の上長に「そちらに未完の人がいるので促してください」と声かけする

のような進め方になり、全員が完了するまで「リストづくり」と「上長とのやりとり」を繰り返すことになりがちでした。全員がシュッと完了させられるならそれでよいのでしょうが、周知のタイミングでおやすみしていて見逃したり、あとでやろうと思っていたけど他のことをやっていたら忘れちゃった、なんてことはよくあります。かくいうぼくも締切の日に「あっ、これやらなきゃじゃん」となったのは一度や二度ではありません。

Slack のチャンネルを使うと、

- それ用のチャンネルを用意する
- チャンネルの説明欄やトピック、ピン留め発言などの目立つところに「これを済ませたら抜けてね」と書いておく
- 全員をそのチャンネルに招待する
- 期日まで、毎日の適当な時間に「@channel やってね！」と発言する

こんな感じになります。未完の人リストはチャンネルのメンバーそのものになるのでリスト作成の手間がゼロになるのと、未完の人だけを対象にリマインドするのが簡単になる点がよいです。

ほいで、無事に全員が完遂できたら「ご協力ありがとうございました〜」と言ってそのチャンネルはアーカイブするなり捨てるなりするだけです。

### 突発的な対応をやるやつ

代表的なのは障害対応です。少なくとも数年前から、いろんなソフトウェア開発の現場で「障害対応のときはそれ用のチャンネルを用意して情報をそこに集約させると便利」というのは言われてきたと認識しています。

弊社において、今年はこれをうまくやれたな〜という感触があります。だいたい「発生日」「プロダクト名」「障害要因」を情報としてチャンネル名に含めて、たとえば hogehoge というサービスでデータベース関連の障害が発生したら、

```
20181221-hogehoge-db
```

みたいなチャンネルを作ってそこに集まって復旧を目指す感じです。トピックが限定されるので関係ないお話や通知が流れてこなくて集中しやすいのと、いつなにが起こったかを時系列で追いやすくなるのがよいですね。対応完了したらこのチャンネルはアーカイブするわけですが、自分が参加しているチャンネルの一覧にこの手のやつがあると「これアーカイブしたいな」「残りのタスクってなんだっけ」という気持ちになり、ちゃんと Done に向かうという副次的な効果も感じます。

### まとめ

社で使うようなチャットアプリケーションにおいては「各プロダクトのチーム」や「部署」「職種」ごとにチャンネルが用意されることが多いでしょう。それらは永続的なチャンネルです。すでに存分に活用されています。

一方で、今回紹介したような「期限付き」「一時的な」「役目を終えたら捨てる」性質のチャンネルは、まだまだ人々に知られていない活用方法がありそうです。そんなことを思って、ぼくが見かけたうまいやり方を紹介しました。

道具にふりまわされることなく、柔軟な発想で道具を活用して、楽しく便利に暮らしていきたいですね！

### あわせて読みたい

弊社における、別の Slack の活用方法や遊びについても紹介しておきますね。

- <a href="https://atakanote.com/209/" title="slack活用Tips：DMからパブリックチャンネル #talk 活用でホウレンソウが便利に！ | ataka note">slack活用Tips：DMからパブリックチャンネル #talk 活用でホウレンソウが便利に！ | ataka note</a>
- <a href="https://june29.jp/2016/12/20/pepabo-ceo-2016/" title="2016年のペパボのCEOは君だ！日々の発言ですべてが決まる - #june29jp">2016年のペパボのCEOは君だ！日々の発言ですべてが決まる - #june29jp</a>

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">御社 Slack のカスタム絵文字はいくつ登録されていますか？<br>うちは 839 個でした。多いのかな？少ないのかな？😇</p>&mdash; たま🤤 (@tmd45) <a href="https://twitter.com/tmd45/status/1062911342607101952?ref_src=twsrc%5Etfw">November 15, 2018</a></blockquote>

「800 個越え？多すぎでは…？」と思って弊社の Slack を確認してみたら 5,000 を越えていました… はい………。

### 追記

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">めっちゃ良さそうだったのでチャンネル作成、トピック設定、全メンバを放り込むBOTを雑に作ってみた。（BOTの権限でチャンネル作成できなかったからSlack AppにしてOAuth Access TokenとBOT Tokenを使うことになったけど）<a href="https://t.co/BHoqSdjxaU">https://t.co/BHoqSdjxaU</a> <a href="https://t.co/fSi75F2Atj">https://t.co/fSi75F2Atj</a></p>&mdash; まひと / Mahito (@Mahito) <a href="https://twitter.com/Mahito/status/1075939582531710976?ref_src=twsrc%5Etfw">December 21, 2018</a></blockquote>

すばらしや〜！
