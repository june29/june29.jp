+++
date = "2018-08-14T15:00:00+09:00"
title = "CircleCI 2.0 に移行しました"
description = "このウェブサイトのビルドとデプロイの自動化に活用している CircleCI 1.0 の提供がもうすぐ終わるということで、CircleCI 2.0 への移行作業を行いました。"
slug = "circleci-2.0"
og_image = "post/2018/08/14/circleci66666.jpg"
draft = false
+++

ここのウェブサイトは <a href="https://gohugo.io/" title="The world’s fastest framework for building websites | Hugo">Hugo</a> で生成していて、そのビルドとデプロイの自動化のために <a href="https://circleci.com/" title="Continuous Integration and Delivery - CircleCI">CircleCI</a> を活用してきました。コミットログを見てみると、CircleCI を導入したのは 2017 年 1 月頃のようでした。

<a href="https://github.com/june29/june29.jp/commit/1d3bc5f1338a02e3dac8367db62ff7635fe9a937" title=":wrench: Try auto-deploy with CircleCI · june29/june29.jp@1d3bc5f">Try auto-deploy with CircleCI · june29/june29.jp@1d3bc5f</a>

当時は CircleCI 2.0 の Closed Beta が進行していたころですかね。2017 年 3 月には <a href="https://circleci.com/blog/circleci-2-0-beta-is-ready-for-your-builds/" title="CircleCI 2.0 Beta is Ready for Your Builds - CircleCI">CircleCI 2.0 Beta is Ready for Your Builds</a> という発表が出ていました。ぼくが CircleCI を導入したのはそのちょっと前で、無邪気に 1.0 系を設定してしまっていたのだなあ。そんな CircleCI の 1.0 系は 2018 年 8 月末で提供終了になるとのことで、2.0 系への移行を行いました。

<img src="/post/2018/08/14/circleci66666.jpg">

このスクリーンショットは 7 月 15 日にサイトに訪問したときにたまたま見かけた 6 並びのときのものです。かわいいから撮っておきました。

<blockquote class="twitter-tweet" data-lang="en"><p lang="und" dir="ltr">6 6 6 6 6 <a href="https://t.co/iMYW24mHxm">pic.twitter.com/iMYW24mHxm</a></p>&mdash; { 大和田: 純 } (@june29) <a href="https://twitter.com/june29/status/1018192807335362562?ref_src=twsrc%5Etfw">July 14, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

### やったこと

- Hugo の仕組みとは別に、ビルド途中で動かしている Ruby のスクリプトがあったので Golang で書き直した <a href="https://github.com/june29/june29.jp/pull/51" title="entries.json の生成スクリプトを Ruby から Go へ移植する by june29 · Pull Request #51 · june29/june29.jp">#51</a>
- `hugo` と `go` を使える Docker イメージを用意した <a href="https://hub.docker.com/r/june29/golang-hugo/" title="june29/golang-hugo - Docker Hub">june29/golang-hugo</a>
- CircleCI 2.0 の設定ファイルを用意した <a href="https://github.com/june29/june29.jp/pull/52" title="CircleCI 2.0 by june29 · Pull Request #52 · june29/june29.jp">#52</a>
- CircleCI 1.0 の設定ファイル、および、関連ファイルを削除した <a href="https://github.com/june29/june29.jp/pull/53" title="Thank you & Goodbye CircleCI 1.0 by june29 · Pull Request #53 · june29/june29.jp">#53</a>

これで無事に CircleCI 2.0 への移行が完了しました。そのあとにエッセイをひとつ書いて、ビルドからデプロイまでが問題なく動くことを確認できました。

<a href="https://circleci.com/gh/june29/june29.jp" title="CircleCI">https://circleci.com/gh/june29/june29.jp</a> のログを見てみると、1.0 のときはビルドとデプロイにだいたい 120 〜 180 秒くらいかかっていたものが、2.0 では 60 〜 90 秒程度に納まっています。待ち時間が少なくなるといううれしい影響もありました。

夏休み期間中の自分のお道具箱のお手入れとしてちょうどいい塩梅の作業でした。楽しかったです。今後も CircleCI にはお世話になります。
