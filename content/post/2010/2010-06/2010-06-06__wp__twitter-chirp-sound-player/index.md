+++
title = "Twitterのタイムラインを可聴化するChirp sound playerを作った"
date = "2010-06-06T19:54:49+09:00"
slug = "twitter-chirp-sound-player"
draft = false

+++

<p>皆さん、Chirp していますか！ボクは相変わらず Chirp のある日々を楽しんでいます。Chirp がなければ出会わなかったであろう tweet ってのがけっこうあって、API の設計ひとつでユーザの行動にも影響があるなぁと考えると面白いです。</p>
<p>このまま Chirp がまっとうに進化していけば、あらゆる Twitter クライアントが既存の API から Chirp に移行し、誰もが即座に自分の tweet に対する反応等を知れるようになるでしょう。これに対してボクは何か働きかけようとは思いませんでした。</p>
<p>他に Chirp の可能性はないだろうか。模索していました。タイムラインに流れる tweet を数十秒遅れではなくリアルタイムに受け取れるようになったとき、何が変わるでしょうか。考えてたどりついたひとつの答えが「音」です。「つぶやき」とも呼ばれる tweet が人々の「おしゃべり」だとしたら、数十秒おきにまとめて、ではなく、リアルタイムに感じられるべきでしょう。</p>
<p>というわけで、Twitter のタイムラインを可聴化する Chirp sound player を作ってみました。</p>
<p><a href="http://libelabo.jp/twitter/" title="ChirpUserStreams =&gt; WebSocket">ChirpUserStreams =&gt; WebSocket</a> にリンクがあります。</p>
<p>JavaScript で audio タグを生成して音を鳴らしている実装の都合から、Firefox の上でしか動きません。<a href="http://june29.jp/2010/05/11/twitter-chirpuserstreams-websocket/" title="TwitterのChirpUserStreamsをWebSocketで垂れ流す - 準二級.jp">前回のエントリで ChirpUsersStream を WebSocket で閲覧するアプリを紹介した</a>ときには「Google Chrome でしか動かない」と書きましたが、今回は swf を間に噛ませて Firefox でも WebSocket が動くようにしています。</p>
<p>Chirp を毎日眺めていると、ユーザの行動習慣のようなものが見えてくるときがあります。「また○○○さんのハイパー follow タイムが始まった」「□□□選手の fav 無双だー！！」といった具合です。しかし、これを見つけるためには訓練が必要です。もっというと「目」が必要です。ところがボクの目はふたつしかなく、そのふたつを常に Chirp に割り当てていては職を失ってしまうでしょう。そこで「耳」を使います。</p>
<p>Chirp sound player では、Twitter ユーザの screen_name を用いて音階を決めています。screen_name が変わらない限り、ユーザの音階は固定となります。これにより、優れた耳があれば、ある程度、音だけでタイムラインの様子を知ることができるようになります。screen_name から単一の音階ではなくメロディを作るようにすれば、ユニーク性が増してもっと楽しくなるかも知れませんね。</p>
<p>そもそも「可聴化」という言葉は <a href="http://twitter.com/negipo" title="Yoshiteru Negishi (negipo) on Twitter">@negipo</a> さんの2年前のエントリで出会い、書かれていることにも大きく納得させられたのでした。今になって読み返してみてもやはり面白い。</p>
<p><a href="http://polog.org/archives/2008/04/13133212.php" title="LDR上ではてブ数を可聴化するgreasemonkey、LDRHatebuCountListenableを書いた (polog)">LDR上ではてブ数を可聴化するgreasemonkey、LDRHatebuCountListenableを書いた (polog)</a></p>
<h3>実装について少し</h3>
<p><a href="http://d.hatena.ne.jp/yanagia/20100323/1269334226" title="JavaScriptで波をつくろう。リアルタイム波形生成＆再生 - Yanagi Entertainment">JavaScriptで波をつくろう。リアルタイム波形生成＆再生 &#8211; Yanagi Entertainment</a></p>
<p><a href="http://twitter.com/yanagia" title="朝倉 柳 (yanagia) on Twitter">@yanagia</a> さんの上記エントリが素晴らしくて、刺激を受けた背景があります。今回は「JavaScript から任意の音階の任意の長さの音を出したい」が要望だったので、公開されているソースコードを大いに参考にして関数を作りました。</p>
<p><a href="http://github.com/june29/jsaudio" title="june29's jsaudio at master - GitHub">june29&#8217;s jsaudio at master &#8211; GitHub</a></p>
<p>HTML5 に触れたい！と思い、WebSocket と audio タグで遊んでみる、というところまできました。どんな工夫を取り入れたらもっと可愛らしく面白くなるだろうかなー。</p>
<h3>今回分かったこと</h3>
<p>音を扱う作業をしていると、作業中に BGM をかけることができなくて悲しい。</p>
