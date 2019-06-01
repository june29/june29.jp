+++
date = "2019-06-01T17:00:00+09:00"
title = "通知ゲートウェイ Takanawa の試運転と、そこで得た「なめらかな通知」という着想"
description = "目の前の困ったことを解決しようとして作ったツールが、おもしろい未来を見せてくれました。"
slug = "takanawa-notification-gateway"
og_image = "post/2019/06/01/takanawa-notification-gateway.png"
draft = false
+++

### はじめに

今すぐ使いたいぜ〜というテンションで通知ゲートウェイの Takanawa というツールを作りました。現在、所属している家庭と企業で試運転しながら便利を獲得しています。

<a href="https://github.com/june29/takanawa" title="june29/takanawa: Scrapbox Slack Notification Gateway">https://github.com/june29/takanawa</a>

### モチベーション

家庭や勤務先のペパボなど、いくつかの組織で <a href="https://scrapbox.io/product" title="Scrapbox - チームのための新しい共有ノート">Scrapbox</a> を活用しています。ペパボでの活用の様子についてはいくつか記事があります。

- <a href="https://medium.com/@scrapbox/%E3%83%81%E3%83%BC%E3%83%A0%E5%86%85%E3%82%B3%E3%83%9F%E3%83%A5%E3%83%8B%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E5%8A%A0%E9%80%9F%E3%81%95%E3%81%9B%E3%82%8B-gmo%E3%83%9A%E3%83%91%E3%83%9Csuzuri%E4%BA%8B%E6%A5%AD%E9%83%A8%E3%81%AEscrapbox%E6%B4%BB%E7%94%A8%E6%B3%95-fcd209e4869b" title="チーム内コミュニケーションを加速させる、GMOペパボSUZURI事業部のScrapbox活用法 – Scrapbox – Medium">チーム内コミュニケーションを加速させる、GMOペパボSUZURI事業部のScrapbox活用法 – Scrapbox – Medium</a>
- <a href="https://shimoju.org/2017/12/31/scrapbox-nippo/" title="Scrapboxでリアルタイム共同日報をやってみた - shimoju.diary">Scrapboxでリアルタイム共同日報をやってみた - shimoju.diary</a>

ぼくが Scrapbox を活用している現場では、同時に <a href="https://slack.com/" title="Where work happens | Slack">Slack</a> も活用していることが多いです。となると、Scrapbox 上のコンテンツの変化を Slack への通知で知りたくなるのが人情というもの。

<a href="https://scrapbox.io/help-jp/Slack%E3%81%AB%E6%9B%B4%E6%96%B0%E3%82%92%E9%80%9A%E7%9F%A5%E3%81%99%E3%82%8B" title="Slackに更新を通知する - Scrapbox ヘルプ">Slackに更新を通知する - Scrapbox ヘルプ</a> の通り、Scrapbox には Slack への通知機能があり、Slack 側で発行した Incoming Webhook の URL を設定しておくと、その Incoming Webhook で指定したチャンネルで更新情報を受信できるようになります。

さて、ペパボは複数のプロダクトを有する組織で、ほとんどの場合、プロダクトごとにその開発チームが存在し、Slack のチャンネルも Git のリポジトリもプロダクトごとに用意されています。開発を進めやすくしようと思ったら、自然とそうなりますよね。

「じゃあ Scrapbox も、プロダクトごとにプロジェクトを用意するか？」となるわけですが、ことは Slack のチャンネルや Git のリポジトリの場合ほど単純ではありません。まず、ぼく個人は、誰でも参加できる <a href="https://scrapbox.io/hub/scrapbox.io%2Fhub_%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6" title="scrapbox.io/hub について - hub">scrapbox.io/hub</a> というものをつくって個人用の <a href="https://scrapbox.io/june29/" title="june29">scrapbox.io/june29</a> から移行するほど、Scrapbox はあれこれをごちゃまぜにして使うほど価値が出るものだ、と考えています。Scrapbox の大きな魅力である「ドキュメント同士がつながる」を最大限に引き出そうと思ったら、なるべくプロジェクトは分けない方がいいはずです。同じように考える人は社内に何人もいました。

しかし、プロジェクトをひとつにすると、通知先の Slack チャンネルはひとつになってしまいます。困りましたね。そこで Takanawa をつくった、というわけです。

### Takanawa の概要

2019 年 6 月 1 日現在の Takanawa は「Scrapbox の通知の HTTP リクエストを受け取って、その中身を確認し、条件に合わせて Slack のチャンネルに振り分けるアプリケーション」です。詳細は <a href="https://github.com/june29/takanawa" title="june29/takanawa: Scrapbox Slack Notification Gateway">https://github.com/june29/takanawa</a> をご覧ください。

<img src="/post/2019/06/01/takanawa-notification-gateway.png">

これによって、Scrapbox ではひとつのプロジェクトにすべてのドキュメントをまとめつつ、トピックごとに通知先チャンネルを切り替えられるようになりました。プロダクト A に関することはプロダクト A のチャンネルへ、プロダクト B に関することはプロダクト B のチャンネルへ、両方に関わることは両方のチャンネルへ、という具合です。

### 「なめらかな通知」という着想

これが本記事のメインの話。いくつかの組織で Takanawa を試運転してみて、なかなかおもしろい洞察が得られたので書いていきます。

Takanawa を使うと「この通知は、あっちのチャンネルにもこっちのチャンネルにも投稿される」ってことが起きるんですよ。それが新鮮でおもしろくて。通知が Taxonomy 的なものから Folksonomy 的なものに変容していく感じ。これを体験して、Slack などの「チームの場を形成するツール」への通知は、もっともっとなめらかになり得るな〜と感じました。ここでいう「なめらか」というのはもちろん、書籍「なめらかな社会とその敵」から借りています。

関連 : <a href="https://june29.jp/2019/05/02/picsy-divicracy-constituent-social-contract/" title="書籍「なめらかな社会とその敵」を読みました - #june29jp">書籍「なめらかな社会とその敵」を読みました - #june29jp</a>

これまでぼくは「GitHub のリポジトリの更新情報を Slack で受け取れるの便利、ワーイ！」と無邪気によろこんできたわけですが、基本的な連携は「リポジトリとチャンネルを 1 対 1 の関係で紐付ける」ので、図示すると以下のような状態になります。通知設定を多重に施せば「1 対 n」にできることは承知していますが、本筋から逸れるのでここでは置いておきます。

<img src="/post/2019/06/01/repository-and-channel.png">

さて、情報の通り道がこのようにパキッと分断されていると、そこで活動するチームの構造も下記のような形状であることが強化されていくでしょう。チーム A の人からチーム B の情報が見えにくくなればなるほど、関心を寄せることが難しくなり、ますます分断が進みます。

<img src="/post/2019/06/01/repository-and-channel-and-team-before.png">

これがもし、間に Takanawa のような仕組みを挟むことで「これはチーム A の話題だけれどチーム B のみんなにとっても有益だよ、だからチャンネル B にも通知しておくね」が実現されるとしたら、チームの境界は曖昧になり、チームとチームの間に重なりが生じていくのではないかと考えます。

<img src="/post/2019/06/01/repository-and-channel-and-team-after.png">

もう何年も便利に活用してきた「GitHub と Slack の連携機能」ひとつをとってみても、これがぼくらの組織にとって理想的なカタチをした機能なんだっけ？と考えてみると発見がありました。用意されている機能をそのまま使うだけじゃなく、自分たちが考える「これがベター」というカタチにアレンジして使ってみると、今とは違った景色が見えてくるのかもしれません！

### おわりに

最初は「とりあえず、これがないと困るから」と思って Takanawa をつくりました。それは「Scrapbox と Slack の間に置く通知ゲートウェイ」として生まれました。

Takanawa を試運転してみると当初の期待はすぐに満たされ、さらに発展的な展望があると気がつきました。今のところは Scrapbox と Slack をつなぐ機能しかなく、文字列の完全一致による振り分け条件しか設定できないので、なめらかなシステムと呼ぶにはずいぶんお粗末です。それでも、よりよい未来に向かうためのプロトタイプとしては十分な働きをしてくれました。

自分としては、思わぬ形で新しいおもちゃが見つかったな〜という感覚です。なめらかな通知システムというソフトウェアからのアプローチで、組織を望ましい方向に変化させられるかもしれないのだから、ワクワクしてしまいます。しばらくは「なめらかな通知」というテーマについてあれこれと考え、Takanawa を育てていくか、あるいはまた別のものをつくるかして、遊んでいくつもりです。
