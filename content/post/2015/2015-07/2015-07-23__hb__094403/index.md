+++
title = "社内 Drone.io の API を叩くためのラッパーをつくった"
date = "2015-07-23T09:44:03+09:00"
slug = "094403"
draft = false
og_image = "post/2015/07/23/094403-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2015/07/23/094403"

+++

<p><a href="http://blog.hatena.ne.jp/udzura/">id:udzura</a> 先輩の <a href="http://qiita.com/udzura/items/8a6fcc0af2a3fbd576db" title="OSS版 Drone.io を社内で使い始めてる話 - Qiita">OSS版 Drone.io を社内で使い始めてる話 - Qiita</a> にある通り、社内で Drone.io が動いていて、同じく社内の GH:E に push すると CI が走る、ということになっている。使い放題の専用 CI サーバわいわい！</p>

<p>最近、日付に起因するテストケースがある日時を過ぎた時点から失敗するようになる、ということが何度かあって、しかもそれに気付くのがなにかしらのフィーチャ実装作業中だったりして、自分の作業とは関係ないところでいきなりテストがフェイルしてふえぇ、みたいなうれしくない体験につながっていた。</p>

<p>これを防ぐために、とにかく日付が変わったら自動でテストが走る、という状態を目指した。その準備作業として、表題のラッパーをつくったというわけです。</p>

<p><a href="https://github.com/june29/drone-ruby">https://github.com/june29/drone-ruby</a></p>

<p>こいつを使って、すでに動かしている Ruboty 製ボットの ruboty-cron と組み合わせて、夜な夜なボットさまが自動でテストを実行しておいてくれるようになった。わいわい！</p>

<p>一歩<a class="keyword" href="http://d.hatena.ne.jp/keyword/%C1%B0%BF%CA">前進</a>したのだ。あとは、うちのチームだけじゃなくて、社内の他のチームでも同様の問題を抱えていたらバーンと解決できるといいな、と思っている。</p>
