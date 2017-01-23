+++
title = "TwitterのChirpUserStreamsをWebSocketで垂れ流す"
date = "2010-05-11T19:08:07+09:00"
slug = "twitter-chirpuserstreams-websocket"
draft = false

+++

<p>Twitter の <a href="http://apiwiki.twitter.com/ChirpUserStreams" title="desc">ChirpUserStreams</a> を WebSocket で垂れ流して閲覧できるアプリを作りました！WebSocket 対応ブラウザ(Chrome 等)でお楽しみください！WebSocket すごい！ユーザ体験が変わる！</p>
<p><a href="http://libelabo.jp/twitter/" title="ChirpUserStreams =&gt; WebSocket">ChirpUserStreams =&gt; WebSocket</a></p>
<p><img width="650" src="http://img.skitch.com/20100511-eagmgcsmx6qiwdwjedjydy3f8u.png" alt="Tweets and Events" /></p>
<p>ボク <a href="http://twitter.com/june29" title="Jun OHWADA (june29) on Twitter">@june29</a> と <a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> から見た世界を体験できるようにしてあります。ChirpUserStreams については、以前にエントリを書きました。</p>
<p><a href="http://june29.jp/2010/04/29/twitter-chirp-user-streams/" title="TwitterのChirpUserStreamsをごくごくしてみた - 準二級.jp">TwitterのChirpUserStreamsをごくごくしてみた</a></p>
<p>本家の API がベータ版であり、まだまだ不安定なので、たまにスクリプトの再起動をかけたりしながら動かしています。見てみたいけど「なんにも表示されないよ？」って方がいたら、<a href="http://twitter.com/june29" title="Jun OHWADA (june29) on Twitter">@june29</a> や <a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> に話しかけてみてください。対応できるかもしれません。</p>
<p><ins datetime="2010-12-31T03:33:25+00:00"><br />
<a href="http://groups.google.com/group/twitter-development-talk/browse_thread/thread/39f188e6f71d93b6" title="User Streams goes Production, Site Streams adds Home Timelines - Twitter Development Talk | Google Groups">User Streams goes Production, Site Streams adds Home Timelines &#8211; Twitter Development Talk | Google Groups</a> にて、ChiprUserStreams は User Streams として正式リリース、とアナウンスがありました。伴い、本エントリで紹介している成果物も動かなくなっています。<br />
</ins></p>
<p>ご自身のアカウントで試したいという方は、Ruby で書いたソースコードならありますので、よかったらご利用ください。</p>
<p>ソースコード: <a href="http://github.com/june29/chirp2websocket" title="june29's chirp2websocket at master - GitHub">june29&#8217;s chirp2websocket at master &#8211; GitHub</a></p>
<h3>ChirpUserStreams を WebSocket に流すまで</h3>
<p>システムの基本構成は以下の通りです。</p>
<p><img width="600" src="http://img.skitch.com/20100511-mhuibnr1t2w2nycdryfq1ek7bk.png" alt="基本構成" /></p>
<p>Twitter の ChirpUserStreams が「水道の蛇口」だとしたら、Ruby でつくったホースを蛇口につなぎ、ホースのもう一端に WebSocket のアタッチメントをつけました、というところ。protected な対象はホースに仕掛けたフィルタで除去します。Chrome 等の WebSocket 対応ブラウザでアクセスすると、まるで水のように tweet と event が流れてきます。面白いのは、すべてのデータは「フロー」であって、システム内に一切の「ストック」を持たない点です。ユーザが自由に蛇口とホースとアタッチメントを選べるようになったら本当に面白いことになりそう。</p>
<p>さてさて、せっかくなので ChirpUserStreams で遊びたい放題しようと思い、以下のような構成のシステムを動かしています。</p>
<p><img src="http://img.skitch.com/20100511-nrxt79mtr2ycueqpmyb5tr4c7y.png" alt="全体構成" /></p>
<p>Ruby でフェッチした ChirpUserStreams のデータは、RabbitMQ に突っ込むと同時に mongoDB にも投げつけました。あとから好きなようにデータを解析できます。JSON 形式そのままで投げつけることができるので保存はとても楽です。自分用 <a href="http://buzztter.com/ja" title="buzztter - Twitter のイマを切り取ったー☆">buzztter</a> や自分用<a href="http://favotter.net/" title="ふぁぼったー">ふぁぼったー</a>、自分用<a href="http://pcod.no-ip.org/yats/" title="twitter検索">twitter検索</a>を作ったら面白そう！</p>
<p>RabbitMQ に突っ込むと、ここから分岐させて stream データを活用できるようになります。本家 Twitter からのフェッチは1本にしておいて(制限もあるので)、利用は何本でも自由に、ってのが良いですよね。</p>
<p>今回は、自分の tweet が favorite されたり retweet されたり、reply をもらったり follow されたときに、iPhone にプッシュ通知を送り、MacBook に Growl で通知するように仕掛けてみました。favorite/retweet/reply から5秒以内に iPhone が「ティロリン」と鳴る体験は、なかなか刺激的で面白いものです。im.kayac.com は、HTTP リクエストを iPhone のプッシュ通知に変換してくれるもので、今回のようなソーシャルアプリ以外にも、システム運用や様々な場面で活用できます！</p>
<h3>メモ</h3>
<p>ただただ ChirpUserStreams を curl で取ってきてコンソールに出力してキャッキャと騒ぎ始めてから、気が付いたらデータで遊び放題できるところまでシステムを組んでいました。ここ数日間で知った要素技術、それを実装したソフトウェア、利用したアプリケーション等のメモです。</p>
<ul>
<li><a href="http://apiwiki.twitter.com/ChirpUserStreams" title="Twitter API Wiki / ChirpUserStreams">Twitter API Wiki / ChirpUserStreams</a></li>
<li><a href="http://www.amqp.org/confluence/display/AMQP/Advanced+Message+Queuing+Protocol" title="Advanced Message Queuing Protocol - Advanced Message Queuing Protocol">Advanced Message Queuing Protocol &#8211; Advanced Message Queuing Protocol</a></li>
<li><a href="http://www.rabbitmq.com/" title="RabbitMQ - Messaging that just works">RabbitMQ &#8211; Messaging that just works</a></li>
<li><a href="http://www.mongodb.org/" title="MongoDB">MongoDB</a></li>
<li><a href="http://dev.w3.org/html5/websockets/" title="The WebSocket API">The WebSocket API</a></li>
<li><a href="http://rubyeventmachine.com/" title="eventmachine @ GitHub">eventmachine @ GitHub</a></li>
<li><a href="http://github.com/tmm1/amqp" title="tmm1's amqp at master - GitHub">tmm1&#8217;s amqp at master &#8211; GitHub</a></li>
<li><a href="http://github.com/igrigorik/em-websocket" title="igrigorik's em-websocket at master - GitHub">igrigorik&#8217;s em-websocket at master &#8211; GitHub</a></li>
<li><a href="http://github.com/celldee/bunny" title="celldee's bunny at master - GitHub">celldee&#8217;s bunny at master &#8211; GitHub</a></li>
<li><a href="http://github.com/brianmario/yajl-ruby" title="brianmario's yajl-ruby at master - GitHub">brianmario&#8217;s yajl-ruby at master &#8211; GitHub</a></li>
<li><a href="http://github.com/june29/twitter-amqp-websocket-example" title="june29's twitter-amqp-websocket-example at master - GitHub">june29&#8217;s twitter-amqp-websocket-example at master &#8211; GitHub</a></li>
<li><a href="http://growl.info/" title="Growl">Growl</a></li>
<li><a href="http://bm11.kayac.com/2009/project/imkayaccom-iphone/" title="面白ラボBM11(ブッコミイレブン) 2009: im.kayac.com for iPhone">面白ラボBM11(ブッコミイレブン) 2009: im.kayac.com for iPhone</a></li>
</ul>
<p>いろんな場面で EventMachine が登場して驚いた。これからますます活用されるようになりそうだ。</p>
<h3>まとめ</h3>
<p>WebSocket って、正直なところ、あまりピンときていませんでした。恐らく「垂れ流してみたいデータ」がなかったからだと思います。それが、Twitter の ChirpUserStreams の登場によって「これで勝つる！」とシビれるに至りました。キラーアプリケーションというか、キラーデータ、キラーストリームといったところです。</p>
<p>ChirpUserStreams 面白い！どうか公式 API になってほしい！WebSocket 面白い！もっといろんなストリームを垂れ流したい！みんなも遊んでみよう！</p>
